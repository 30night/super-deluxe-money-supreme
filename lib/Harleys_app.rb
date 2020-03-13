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
  end
