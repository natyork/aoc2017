require "minitest/autorun"
require_relative "solution"

class TestSolutionPartOne < Minitest::Test

  def test_checksum
    assert_equal 18, Solution.new(["5\t1\t9\t5\n", "7\t5\t3\n", "2\t4\t6\t8\n"]).part_one
  end
end

class TestSolutionPartTwo < Minitest::Test
  def test_checksum
    assert_equal 9, Solution.new(["5\t9\t2\t8\n", "9\t4\t7\t3\n", "3\t8\t6\t5\n"]).part_two
  end
end
