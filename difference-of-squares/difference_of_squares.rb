=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end

class Squares
  def initialize(num)
    @numbers = []
    (1..num).each do |n|
      @numbers << n
    end
  end

  def square_of_sum
    @numbers.reduce(0) { |sum, n| sum + n }**2
  end

  def sum_of_squares
    squares = @numbers.map { |n| n**2 }
    squares.reduce(0) { |sum, sq| sum + sq }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
