require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'

class GridTest < Minitest::Test
  def test_it_finds_the_vertical_direction_to_the_princess
    grid = Grid.new(3, ["p--\n", "-m-\n", "---"])

    assert_equal 'UP', grid.vertical
  end

  def test_it_finds_the_horizontal_direction_to_the_princess
    grid = Grid.new(3, ["p--\n", "-m-\n", "---"])

    assert_equal 'LEFT', grid.horizontal
  end

  def test_it_prints_the_full_path_to_the_princess
    grid = Grid.new(3, ["p--\n", "-m-\n", "---"])

    assert_equal ["UP", "LEFT"], grid.full_path
  end

  def test_it_prints_the_next_move_to_the_princess
    grid = Grid.new(5, ["-----\n","-----\n", 'p--m-', "-----\n", "-----"])

    assert_equal "LEFT", grid.next_move(2, 3)
  end
end
