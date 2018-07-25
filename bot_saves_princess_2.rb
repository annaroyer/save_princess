require './lib/grid.rb'

size = gets.to_i

bot_row, bot_column = gets.strip.split.map(&:to_i)

rows = Array.new(size).map do |row|
  gets.chomp
end

puts Grid.new(size, rows).next_move(bot_row, bot_column)
