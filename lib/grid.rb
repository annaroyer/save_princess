class Grid
  def initialize(size, rows)
    @size = size
    @rows = rows
    @characters = ['p', 'm']
  end

  def vertical_slots
    @characters.map do |character|
      @rows.join.chars.find_index(character) / @size
    end
  end

  def vertical_distance
    vertical_slots.reduce(:-)
  end
end
