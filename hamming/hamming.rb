=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming
  def self.compute(orig, copy)
    raise ArgumentError unless orig.length == copy.length

    diff_count = 0
    orig.chars.each_index do |index|
      unless orig.chars[index] == copy.chars[index]
        diff_count += 1
      end
    end
    diff_count
  end

end
