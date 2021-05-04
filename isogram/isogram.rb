=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram
  def self.isogram?(word)
    chars = word.scan(/\w/).map(&:upcase)
    chars.each do |char|
      return false if chars.count(char) > 1
    end
    true
  end
end
