class Grid
  def initialize(size, rows)
    @size = size
    @characters = ['p', 'm']
    @slots = rows.join.chars
  end

  def vertical_distance
    @characters.map do |character|
      @slots.find_index(character) / @size
    end.reduce(:-)
  end

  def horizontal_distance
    @characters.map do |character|
      @slots.find_index(character) % @size
    end.reduce(:-)
  end

  def vertical_direction
    return 'DOWN' if vertical_distance.positive?
    'UP'
  end

  def horizontal_direction
    return 'RIGHT' if horizontal_distance.positive?
    'LEFT'
  end

  def full_path
    Array.new(vertical_distance.abs, vertical_direction)
    .concat(Array.new(horizontal_distance.abs, horizontal_direction))
    .join("\n")
  end
end
