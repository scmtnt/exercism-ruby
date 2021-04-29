=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix

    attr_reader :rows
    
    def initialize(nums)
        @rows = []
        to_rows = nums.split(/\n/)
        to_rows.each do |row|
            r = []
            row.scan(/\d+/).each do |num|
                r << num.to_i
            end
            @rows << r
        end
    end

    def columns
        cols = []
        
        (0..@rows.size-1).each do |index|
            current_col = []
            @rows.each do |row|
                current_col << row[index]
            end
            cols << current_col
        end

        cols
    end
end