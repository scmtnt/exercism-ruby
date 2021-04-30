=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock
    attr_reader :hour, :minute

    def initialize(hour: 0, minute: 0)
        @hour = hour
        @minute = minute

        check_minute
        check_hour
    end

    def to_s
        "%02d:%02d" % [@hour, @minute]
    end

    def +(oth)
        Clock.new(hour: self.hour + oth.hour, minute: self.minute + oth.minute).to_s
    end

    def -(oth)
        Clock.new(hour: self.hour - oth.hour, minute: self.minute - oth.minute).to_s
    end

    def ==(oth)
        (self.hour == oth.hour) && (self.minute == oth.minute)
    end

    def check_minute
        if @minute >= 60
            @hour += @minute / 60
        elsif @minute < 0
            @hour += @minute / 60
        end
        @minute = @minute % 60
    end

    def check_hour
        if @hour >= 24
            @hour = @hour % 24
        elsif @hour < 0
            @hour < -24 ? @hour = @hour % 24 : @hour = 24 + @hour
        end
    end
end