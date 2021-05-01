=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble
  def initialize(word)
    @scoring = { 'AEIOULNRST' => 1,'DG' => 2, 'BCMP' => 3, 'FHVWY' => 4, 'K' => 5,
                 'JX' => 8, 'QZ' => 10 }
    @word = word
  end

  def score(word=@word)
    the_score = 0
    if word
      @word_to_chars = word.scan(/\w/)
      @word_to_chars.each do |char|
        the_score += find_char char
      end
    end
    the_score
  end

  def find_char(c)
    found_char_score = 0
    @scoring.each_key do |letters|
      if letters.include? c.upcase
        found_char_score = @scoring[letters]
        break
      end
    end
    found_char_score
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end
