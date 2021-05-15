=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn
  def self.valid?(num)
    return false if num.strip.length <= 1
    return false if num.count('a-zA-Z').positive?

    (double_digits(num).sum % 10).zero?
  end

  def self.double_digits(num)
    num.gsub!(' ', '')
    to_int = num.chars.map { |n| n.to_i }.reverse
    to_int.each_index do |index|
      if index.odd?
        n = to_int[index] * 2
        n -= 9 if n > 9
        to_int[index] = n
      end
    end
    to_int
  end

  private_class_method :double_digits
end
