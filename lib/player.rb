# When first calling the Player class it should start with the 'x' for the player 1 input
#
# Player 1 is the human and Player 2 another human (or AI if I can implement it / A random function is easier)
# How to create both players can make then take turns ?

require_relative "board"

class Player
  attr_reader :mark

  def initialize(mark)
    @mark = mark
  end

end