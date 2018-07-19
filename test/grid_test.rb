require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'

class GridTest < Minitest::Test
  def test_it_finds_vertical_distance
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal (-1), grid.vertical_distance
  end

  def test_it_finds_horizontal_distance
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal (-1), grid.horizontal_distance
  end

  def test_it_finds_the_vertical_direction_to_the_princess
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal 'UP', grid.vertical_direction
  end

  def test_it_finds_the_horizontal_direction_to_the_princess
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal 'LEFT', grid.horizontal_direction
  end
end
