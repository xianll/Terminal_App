require 'colorize'

def press_enter
    puts "Press 'ENTER' to continue...".colorize(:red)
    gets.chomp
    system("clear")
end