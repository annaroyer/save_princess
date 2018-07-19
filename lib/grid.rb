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
end
