=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
  @@board = []

  def self.square(sq)
    raise ArgumentError unless (1..64).include? sq

    grains = 1
    (sq - 1).times do
      grains *= 2
    end
    grains
  end

  def self.total
    sum = 0
    (1..64).each do |n|
      sum += Grains.square(n)
    end
    sum
  end
end
