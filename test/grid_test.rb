require 'minitest/autorun'
require 'minitest/pride'
require './lib/grid'

class GridTest < Minitest::Test
  def test_it_finds_the_vertical_direction_to_the_princess
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal 'UP', grid.vertical
  end

  def test_it_finds_the_horizontal_direction_to_the_princess
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal 'LEFT', grid.horizontal
  end

  def test_it_prints_the_full_path_to_the_princess
    grid = Grid.new(3, ["p--", "-m-", "---"])

    assert_equal "UP\nLEFT", grid.full_path
  end

  def test_it_prints_the_next_move_to_the_princess
    grid = Grid.new(5, 2, 3, ['-----','-----', 'p--m-', '-----', '-----'])

    assert_equal "LEFT", grid.next_move
  end

  def test_it_finds_the_princess_when_bot_and_princess_are_randomly_placed
    grid = Grid.new(5, 2, 3, ['-----','-----', 'p--m-', '-----', '-----'])

    assert_equal "LEFT\nLEFT\nLEFT", grid.full_path
  end
end
