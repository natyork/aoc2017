class Solution

  def initialize(string)
    @input = string.chars.map(&:to_i)
  end

  def part_one
    input_prime = @input << @input.first

    input_prime.each_cons(2).to_a.map { |x, y| if x == y then x else 0 end }.sum
  end

  def part_two
    halfway = @input.length/2

    input_prime = @input.concat(@input.slice(0, halfway))

    input_prime.each_with_index.map { |x, i| if x == input_prime[i + halfway] then x else 0 end }.sum
  end
end

puts Solution.new(File.read("input.txt").strip).part_one
puts Solution.new(File.read("input.txt").strip).part_two
