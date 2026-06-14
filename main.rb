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
     
      print "\e[H\e[2J" 
      puts "Welcome to Tic-Tac-toe\n"

      @board.display
      puts "Enter a number between 1 ~ 9 to place your mark "
      num = gets.chomp.to_i
      i = num - 1
      player = players[whos_turn]

      if num.between?(1, 9) && @board.read_space(i) == "   "
          @board.place_mark(i, player.mark)

        if @board.winner?

          @board.display
          puts "#{player.mark} Wins!"
          game_over = true
        elsif @board.full?
          puts "That's a Draw"
          game_over = true
        else
          whos_turn = ((whos_turn + 1) % players.length).to_i
        end
      else
        puts "Erroneous input! Try again... <Press ENTER to continue>"
        gets
      end
    end
  end
end

Game.new.take_turns