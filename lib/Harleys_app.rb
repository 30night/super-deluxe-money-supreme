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
