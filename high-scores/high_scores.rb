=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores

  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    three = []
    scores_copy = @scores
    @scores.size > 3 ? n = 3 : n = @scores.size

    n.times do
      three << scores_copy.max
      scores_copy.delete_at(scores_copy.index(scores_copy.max))
    end
    
    three
  end

  def latest_is_personal_best?
    @scores.max == @scores.last
  end
end
