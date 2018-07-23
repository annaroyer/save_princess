require './lib/grid.rb'

def displayPathtoPrincess(n,grid)
  puts Grid.new(n, grid).full_path
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

displayPathtoPrincess(m,grid)
