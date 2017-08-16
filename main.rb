
require 'colorize'
require 'pry'

def puts_git(cmd)
  puts `git #{cmd} -h`
end

def menu
  puts "Main Menu".colorize(:blue)
  puts '1: Enter Git Command'
  puts '2: Exit'.colorize(:green)
  choice = gets.to_i
 case choice
   when 1
     puts 'Enter a Git Command'
     puts_git(gets.strip)
   when 2
     puts 'Thanks for using the git comand'
     exit
   else
     puts 'Wrong choice jack weed'
     menu #calles the method, We are in the def menu method right now
 end
 menu
end

menu
