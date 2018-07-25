require './lib/grid.rb'

def nextMove(n,r,c,grid)
  puts Grid.new(n, grid).next_move(r, c)
end

size = gets.to_i

bot_row, bot_column = gets.strip.split.map {|num| num.to_i}

rows = Array.new(n)

(0...n).each do |i|
  grid[i] = gets
end

grid = Grid.new(size, rows)
puts grid.next_move(bot_row, bot_column)
