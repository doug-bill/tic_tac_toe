# Drawing the Board on the CLI.

class Board

  def initialize
    @spaces = Array.new(9, "   ")
  end

  def display

    @spaces.each_slice(3).with_index do |row, index|
      puts row.join(" | ")
      puts "-" * 15 if index < 2
    end
  end

end