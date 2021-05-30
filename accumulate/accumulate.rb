=begin
Write your code for the 'Accumulate' exercise in this file. Make the tests in
`accumulate_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/accumulate` directory.
=end

class Array
  def accumulate(&block)
    new_arr = []
    return to_enum(__method__) { self } unless block_given?
    self.each do |el|
      new_arr << (yield el) if el
    end
    new_arr
  end
end
