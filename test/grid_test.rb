require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'

class GridTest < Minitest::Test
  def test_it_finds_vertical_distance
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal -1, grid.vertical_distance
  end
end
