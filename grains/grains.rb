=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

class Grains
  def self.square(sq)
    raise ArgumentError unless (1..64).include? sq

    # grains = 1
    # (sq - 1).times do
    #   grains *= 2
    # end
    # grains
    2**(sq -1)
  end

  def self.total
    (1..64).to_a.map { |n| Grains.square(n) }.sum
    # sum = 0
    # (1..64).each do |n|
    #   sum += Grains.square(n)
    # end
    # sum
  end
end
