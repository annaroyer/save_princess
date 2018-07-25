require './lib/grid.rb'

rows = Array.new(gets.to_i).map do |row|
  gets.strip
end

puts Grid.new(rows.size, rows).full_path
