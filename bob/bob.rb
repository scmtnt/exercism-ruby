=begin
Write your code for the 'Bob' exercise in this file. Make the tests in
`bob_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/bob` directory.
=end

class Bob
  def self.hey(remark)
    @@remark = remark.strip.gsub("\n", '')

    if @@remark.empty?
      "Fine. Be that way!"
    elsif question? && yelling?
      "Calm down, I know what I'm doing!"
    elsif yelling?
      "Whoa, chill out!"
    elsif question?
      "Sure."
    else
      "Whatever."
    end
  end

  def self.question?
    # !@@remark.scan(/[?]$/).empty?
    @@remark.end_with?('?')
  end

  def self.yelling?
    # (!@@remark.scan(/[!]$/).empty? && @@remark.scan(/[a-z]+/).empty?) ||
    (@@remark.end_with?('!') && @@remark.count('a-z').zero?) ||
      (@@remark.scan(/[A-Z]+[0-9]*/).join == @@remark.scan(/\w+\d*/).join &&
        !@@remark.scan(/\w+\d*/).empty?)
  end

  private_class_method :question?, :yelling?
end
