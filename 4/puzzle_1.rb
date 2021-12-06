lines = File.readlines('input.txt').map { |l| l.delete("\n") }.reject(&:empty?)
board_size = 5
boards = []
numbers = nil

# setup
until lines.empty?
  numbers ||= lines.shift.split(',').map(&:to_i)

  boards << lines.shift(board_size).map { |l| l.split.map(&:to_i) }
end

# bingo!
(board_size..numbers.length).each do |num_of_selected_numbers|
  boards.each do |board|
    selected_numbers = numbers[0..num_of_selected_numbers]
    bingo = !board.select {|row| (row-selected_numbers).empty?}.empty?
    bingo = !board.transpose.select {|col| (col-selected_numbers).empty?}.empty? unless bingo

    if bingo
      puts (board.flatten - selected_numbers).sum * selected_numbers.last
      exit
    end
  end
end

