require "Harleys_app/version"
require 'tty-table'
require 'csv'
require 'colorize'
require 'artii'
require 'colorized_string'
# require "tty-prompt"

# prompt = TTY::Prompt.new

def welcome
  text = Artii::Base.new :font => 'doom'
  puts text.asciify('Money').colorize(:color => :blue, :background => :yellow)
end

class Menu
  def self.view_table(table_name)
    puts table_name
  end
  def self.update_table(table_name)
  puts  'day'
  day = gets.chomp.to_i
  puts 'how how much did you earn today?'
  assets = gets.chomp.to_i
  puts 'how much did you spend today?'
  liabilities = gets.chomp.to_i
  capital = assets - liabilities
  table_name << [day,assets,liabilities,capital]
  end
  def self.remove_capital
    p 'how much capital would you like to remove'
    capital_removal = gets.chomp
  end
  def self.quit(user_name, table)
    Menu.save(user_name, table)
    exit
  end
  def self.save(user_name,table)
    CSV.open(user_name + '.csv', 'w') do |file|
      table.each do |row|
        file << row 
      end
    end
  end
  end


welcome


# Get the user name 
table_name = ''
user_name = ''
    loop do
    puts 'hello, what is your name?'
    user_name = gets.chomp 
    if File.exist?(user_name + ".csv")
      data = []
      file = File.read(user_name + ".csv")
      csv = CSV.parse(file, headers: true)
      csv.each do |row|
      data << row.to_hash.values    
      end
      table_name = TTY::Table.new ['day','assets', 'liabilities','capital'], data
      break
    else 
      p 'you have imputed a user that does not exist,'
      p 'would you like to make a new user'
      new_user_input = gets.chomp
      case
      when 'no'
    
      when 'yes'
      CSV.open("#{user_name}.csv", "wb") do |csv|
       csv << ['day', "assets", "liabilities", "capital"]

      p "welcome #{user_name} you are now a user."
      break
     end
      end
    end
end

running = true
while running
  # running the app
  puts "welcome back #{user_name} what would you like to do?"
  puts'>   1 view table'
  puts'>   2 update table'
  puts'>   3 exit'

  old_user_input = gets.chomp
  p old_user_input
  case old_user_input
  when "1"
  
    puts Menu.view_table(table_name)
  when '2'
  Menu.update_table(table_name)

  when '3'

    running = false
    Menu.quit(user_name,table_name)
  else
  puts "DEFAULT CASE"

  end
end




