class Calculator

  def initialize(lines)
    interests = lines.map { |line| Interest.new(line) }
    @interest_range = Interest_Range.new(interests)
  end

  def average(from_date, interest_duration) 
    to_date = make_to_date(from_date, interest_duration)
    relevant_interests = @interest_range.relavant_interests(from_date, to_date)

    pairs = relevant_interests.zip(relevant_interests.drop(1))
    pairs = pairs.map do |a,b|
      if b
        puts a.m3
        a.m3 * (b.date - a.date)
      else
        0
      end
    end
    puts "pairs2: #{pairs}"
    pairs.inject(0, :+) / (Interest.years(interest_duration) * 365)
  end

  private

  def make_to_date(date, interest_duration)
    years = Interest.years(interest_duration)
    years.times { date = date.next_year }
    date
  end

end