require './lib/grid.rb'

def nextMove(n,r,c,grid)
  puts Grid.new(n, grid).next_move(r, c)
end

n = gets.to_i

r,c = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

(0...n).each do |i|
    grid[i] = gets
end

nextMove(n,r,c,grid)
