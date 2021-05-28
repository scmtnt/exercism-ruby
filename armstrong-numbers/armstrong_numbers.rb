=begin
Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
`armstrong_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/armstrong-numbers` directory.
=end

class ArmstrongNumbers
  def self.include?(num)
    # digits = num.to_s.chars.map(&:to_i)
    digits = num.digits
    size = digits.count
    num == digits.map { |n| n**size }.sum
  end
end
