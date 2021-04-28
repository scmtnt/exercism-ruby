=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase

    def initialize(input)
        @words = input.scan(/\w+'*[\w*]|\d/)
        @words.each { |w| w.downcase! }
    end

    def word_count
        counter = {}
        @words.each do |word|
            counter[word] = @words.count(word)
        end

        counter
    end

end