class Solution
  attr_reader :input

  def initialize(string)
    @input = string.map(&:strip).map{ |x| x.split("\t").map(&:to_i) }
  end

  def part_one
    @input.map{ |x| x.max - x.min }.sum
  end

  def part_two
    @input.map do |x|
      x.sort.reverse.combination(2).to_a.map do |a, b|
        if a%b == 0
          a/b
        else
          0
        end
      end
    end.flatten.sum
  end
end

print Solution.new(File.readlines("input.txt")).part_one
print Solution.new(File.readlines("input.txt")).part_two
