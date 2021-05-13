=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end

class Prime
  def self.nth(n)
    raise ArgumentError unless n > 0

    primes = []
    num = 2
    while primes.size < n
      primes << num if Prime.prime?(num)
      num += 1
    end

    primes.last
  end

  def self.prime?(number)
    (2...number).each do |div|
      return false if (number % div).zero?
    end
    true
  end
end
