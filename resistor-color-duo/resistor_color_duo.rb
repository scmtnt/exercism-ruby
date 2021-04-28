=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo

    @@colors = %w(black brown red orange yellow green blue violet grey white)

    def self.value(clrs)
        answer = ""

        clrs.each do |c|
            if answer.length < 2
                answer += @@colors.index(c).to_s
            end
        end

        answer.to_i
    end

end