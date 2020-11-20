require_relative "about.rb"
require_relative "help.rb"
require_relative "exit.rb"

input = [(print '> '), gets.rstrip][1]
commands = ['about', 'help', 'exit']
about = About.new
help = Help.new
exit = Exit.new

if input == commands[0]
	about.call
elsif input == commands[1]
	help.call
elsif input == commands[2]
	exit.call
end