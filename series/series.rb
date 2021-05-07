=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(digits)
    @digits = digits.scan(/\d/)
  end

  def slices(len)
    raise ArgumentError if len > @digits.size

    digits = @digits.dup
    slices = []
    until digits.empty?
      slice = digits.take(len).join
      slices << slice if slice.length == len
      digits.shift
    end
    slices
  end
end
