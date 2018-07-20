class Grid
  def initialize(size, bot_row=size/2, bot_column=size/2, rows)
    @size = size
    @bot_coordinates = [bot_column, bot_row]
    @distance = @size / 2
    @princess_space = rows.join.index('p')
  end

  def princess_coordinates
    [@princess_space % @size, @princess_space / @size]
  end

  def vector_path
    princess_coordinates.zip(@bot_coordinates).map do |coordinates|
      coordinates.reduce(:-)
    end
  end

  def vertical
    return 'DOWN' if vector_path.last.positive?
    return 'UP' if vector_path.last.negative?
  end

  def horizontal
    return 'RIGHT' if vector_path.first.positive?
    return 'LEFT' if vector_path.first.negative?
  end

  def full_path
    Array.new(vector_path.last.abs, vertical).concat(Array.new(vector_path.first.abs, horizontal))
    .compact.join("\n")
  end

  def next_move
    vertical || horizontal
  end
end
