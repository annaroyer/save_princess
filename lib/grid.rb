class Grid
  def initialize(size, rows)
    @from_center = size / 2
    @princess_space = rows.map(&:chomp).join.index('p')
    @princess_row = @princess_space / size
    @princess_column = @princess_space % size
  end

  def full_path
    Array.new(@from_center, vertical) + Array.new(@from_center, horizontal)
  end

  def next_move(bot_row, bot_column)
    vertical(bot_row) || horizontal(bot_column)
  end

  private

    def vertical(bot_row = @from_center)
      return 'UP' if @princess_row < bot_row
      return 'DOWN' if @princess_row > bot_row
    end

    def horizontal(bot_column = @from_center)
      return 'LEFT' if @princess_column < bot_column
      return 'RIGHT' if @princess_column > bot_column
    end
end
