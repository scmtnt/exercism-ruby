=begin
Write your code for the 'Robot Name' exercise in this file. Make the tests in
`robot_name_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-name` directory.
=end

class Robot
  @@names_pool = []

  def name
    Robot.fill_pool if @@names_pool.empty?
    @name ||= @@names_pool.pop
  end

  def reset
    @name = nil
  end

  def self.fill_pool
    @@names_pool = ('AA000'..'ZZ999').to_a.shuffle
  end

  def self.forget
    @@names_pool = []
  end
end
