class Grid
  def initialize(size, rows)
    @size = size
    @distance = size / 2
    @princess_corner = rows.join.index('p')
  end

  def vertical
    return 'UP' if (@princess_corner / @size).zero?
    'DOWN'
  end

  def horizontal
    return 'LEFT' if (@princess_corner % @size).zero?
    'RIGHT'
  end

  def full_path
    Array.new(@distance, vertical)
    .concat(Array.new(@distance, horizontal))
    .join("\n")
  end
end
