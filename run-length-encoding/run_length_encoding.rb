=begin
Write your code for the 'Run Length Encoding' exercise in this file. Make the tests in
`run_length_encoding_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/run-length-encoding` directory.
=end

class RunLengthEncoding
  def self.encode(input)
    return input if input.strip.empty?

    chars = input.chars
    seq = []
    until chars.empty?
      seq << chars.take_while { |c| c == chars[0] }
      chars.shift(seq.last.size)
    end
    encoded = []
    seq.each do |s|
      len = s.size > 1 ? s.size : ''
      encoded << format('%s%s', len.to_s, s[0])
    end
    encoded.join
  end

  def self.decode(input)
    return input if input.strip.empty?

    get_combos = input.scan(/\D|\d+\D/)
    decoded = []
    get_combos.each do |part|
      decoded << part if part.length == 1
      num = part.scan(/\d+/)[0].to_i
      char = part.scan(/\D/)
      num.times { decoded << char }
    end
    decoded.join
  end
end
