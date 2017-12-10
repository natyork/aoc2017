require "minitest/autorun"
require_relative "solution"

class TestSolutionPartOne < Minitest::Test

  def test_checksum
    assert_equal 18, Solution.new("5195 753 2468").part_one
  end

end

class TestSolutionPartTwo < Minitest::Test
end
