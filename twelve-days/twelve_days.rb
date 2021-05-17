=begin
Write your code for the 'Twelve Days' exercise in this file. Make the tests in
`twelve_days_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/twelve-days` directory.
=end

class TwelveDays
  CAROL = { first: 'a Partridge in a Pear Tree',
            second: 'two Turtle Doves',
            third: 'three French Hens',
            fourth: 'four Calling Birds',
            fifth: 'five Gold Rings',
            sixth: 'six Geese-a-Laying',
            seventh: 'seven Swans-a-Swimming',
            eighth: 'eight Maids-a-Milking',
            ninth: 'nine Ladies Dancing',
            tenth: 'ten Lords-a-Leaping',
            eleventh: 'eleven Pipers Piping',
            twelfth: 'twelve Drummers Drumming' }.freeze

  def self.song
    @@current_gifts = ''
    song = []

    CAROL.each_pair do |day, gift|
      @@current_gifts = gift_part(gift)
      song << format('%s: %s', day_part(day), @@current_gifts)
    end
    song.join("\n\n") + "\n"
  end

  def self.day_part(ord)
    "On the #{ord} day of Christmas my true love gave to me"
  end

  def self.gift_part(gift)
    return "#{gift}." if gift.match?(/Pear/)
    return "#{gift}, and #{@@current_gifts}" if gift.match?(/Doves/)

    "#{gift}, #{@@current_gifts}"
  end

  private_class_method :day_part, :gift_part
end
