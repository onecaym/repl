require './lib/about'
require './lib/help'
require './lib/exit'

class Repl
  def initialize(user_command)
    @input = user_command
    @commands = %w[about help exit]
    @about = About.new
    @help = Help.new
    @exit = Exit.new
  end

  attr_reader :input, :commands, :about, :help, :exit

  def start
    if equals_about
      about.call
    elsif equals_help
      help.call
    elsif equals_exit
      exit.call
    end
  end

  private

  def equals_about
    input == commands[0]
  end

  def equals_help
    input == commands[1]
  end

  def equals_exit
    input == commands[2]
  end

end
