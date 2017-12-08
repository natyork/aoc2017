require "minitest/autorun"
require_relative "solution"

class TestSolutionPartOne < Minitest::Test

  def test_1122
    assert_equal 3, Solution.new("1122").part_one
  end

  def test_1111
    assert_equal 4, Solution.new("1111").part_one
  end

  def test_1234
    assert_equal 0, Solution.new("1234").part_one
  end

  def test_91212129
    assert_equal 9, Solution.new("91212129").part_one
  end
end

class TestSolutionPartTwo < Minitest::Test
  def test_1212
    assert_equal 6, Solution.new("1212").part_two
  end

  def test_1221
    assert_equal 0, Solution.new("1221").part_two
  end

  def test_123425
    assert_equal 4, Solution.new("123425").part_two
  end

  def test_123123
    assert_equal 12, Solution.new("123123").part_two
  end

  def test_12131415
    assert_equal 4, Solution.new("12131415").part_two
  end
end
