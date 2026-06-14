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

  def winner?

    win_conditions = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6]
    ]

    win_conditions.any? do |line|
      values = line.map{ |index| @spaces[index] }
      values.uniq.length == 1 && values.first != "   "
    end
  end 

  def full?
    @spaces.all? { |cell| cell != "   " }
  end
end
