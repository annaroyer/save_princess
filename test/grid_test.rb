require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'

class GridTest < Minitest::Test
  def test_it_prints_the_full_path_to_the_princess
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal ["UP", "LEFT"], grid.full_path
  end

  def test_it_prints_the_next_move_to_the_princess
    grid = Grid.new(5, ["-----","-----", 'p--m-', "-----", "-----"])

    assert_equal "LEFT", grid.next_move(2, 3)
  end
end
