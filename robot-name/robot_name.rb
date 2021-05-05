=begin
Write your code for the 'Robot Name' exercise in this file. Make the tests in
`robot_name_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-name` directory.
=end

class Robot
  @@names_pool = []
  @@used_names = {}

  attr_reader :name

  def initialize
    Robot.fill_pool if @@names_pool.empty?
    gen_robot_name
  end

  def gen_robot_name
    @name = @@names_pool.sample
    if @@used_names[@name]
      reset
    else
      @@used_names[@name] = true
    end
  end

  def reset
    if (@@used_names.size % 100).zero?
      @@names_pool -= @@used_names.keys
      @@used_names = {}
    end
    gen_robot_name
  end

  def self.fill_pool
    ('A'..'Z').each do |first|
      ('A'..'Z').each do |second|
        (0..999).each do |num|
          @@names_pool << first + second + '%03d' % num.to_s
        end
      end
    end
  end

  def self.forget
    @@names_pool = []
    @@used_names = {}
  end
end
