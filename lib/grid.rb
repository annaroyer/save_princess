class Grid
  def initialize(size, bot_row=size/2, bot_column=size/2, rows)
    @size = size
    @bot_coordinates = [bot_row, bot_column]
    @distance = @size / 2
    @princess_space = rows.join.index('p')
  end

  def princess_coordinates
    [@princess_space / @size, @princess_space % @size]
  end

  def vector_path
    princess_coordinates.zip(@bot_coordinates).map do |coordinates|
      coordinates.reduce(:-)
    end
  end

  def vertical
    return 'DOWN' if vector_path.first.positive?
    return 'UP' if vector_path.first.negative?
  end

  def horizontal
    return 'RIGHT' if vector_path.last.positive?
    return 'LEFT' if vector_path.last.negative?
  end

  def full_path
    Array.new(@distance, vertical).concat(Array.new(@distance, horizontal))
    .join("\n")
  end

  def next_move
    vertical || horizontal
  end
end
