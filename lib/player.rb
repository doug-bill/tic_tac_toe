# When first calling the Player class it should start with the 'x' for the player 1 input
#
# Player 1 is the human and Player 2 another human (or AI if I can implement it / A random function is easier)
# How to create both players can make then take turns ?

require_relative "board"

class Player

  puts "Enter a number between 1 ~ 9 to place your 'x' "

  if input == Kernel.gets.match(/[[:digit:]]/)
    puts input
  else
    puts "Erroneous input! Try again..."
  end

end