# Drawing the Board on the CLI.

class Board

  def initialize
    @spaces = Array.new(9, "   ")
  end

  def place_mark(index, mark)
    @spaces[index] = mark
  end

  def read_space(index)
    @spaces[index]
  end

  def display

    @spaces.each_slice(3).with_index do |row, index|
      puts row.join(" | ")
      puts "-" * 15 if index < 2
    end
  end

end