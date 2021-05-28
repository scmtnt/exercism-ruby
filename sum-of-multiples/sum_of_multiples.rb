=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples
  def initialize(*args)
    @multiples = args.sort
  end

  def to(num)
    nums = []
    @multiples.map do |m|
      next if num <= m

      (1...num).each do |i|
        nums << i if (i % m).zero? && !nums.include?(i)
      end
    end
    nums.sum
  end
end
