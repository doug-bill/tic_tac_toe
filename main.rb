# These instructions can be deleted after the project completion
# 
# Project: Tic Tac Toe
# Introduction

# Remember Tic Tac Toe (also known as “Noughts and Crosses”)? It involves a couple of players, a board, 
# checking for victory in a game loop… all the conditions that make it a fun little problem to solve using our newfound OOP sea legs. Let’s build it!
# Assignment

# Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.

#     Think about how you would set up the different elements within the game… What should be a class?
#     Instance variable? Method? A few minutes of thought can save you from wasting an hour of coding.
#     Build your game, taking care to not share information between classes any more than you have to.

# This will be the code that runs the whole game.

require_relative "lib/board"
require_relative "lib/player"
require "figlet"

# figlet = Figlet::Typesetter.new("Tic-Tac-Toe", { font: "3-d" })

# puts figlet

class Game

  def initialize
    @board = Board.new
    @p1 = Player.new(" X ")
    @p2 = Player.new(" O ")
  end

  

  def take_turns

    players = [@p1, @p2]
    whos_turn = 0
    game_over = false

    until game_over
      puts "Enter a number between 1 ~ 9 to place your mark "
      num = gets.chomp.to_i
      i = num - 1
      player = players[whos_turn]

      if num.between?(1, 9)
        if @board.read_space(i) == "   "
          @board.place_mark(i, player.mark)
          @board.display
          puts "Next turn:"
        elsif @board.read_space(i) != "   "
          puts "You can't draw there"
        end
      else
        puts "Erroneous input! Try again..."
      end
      whos_turn = ((whos_turn + 1) % players.length).to_i

    end
  end
end

puts "Welcome to Tic-Tac-toe\n"
Game.new.take_turns