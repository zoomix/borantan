class Interest_Range

  def initialize(interest_changes)
    @interest_changes = interest_changes.sort_by { |interest| interest.date }
  end

  def relavant_interests(from_date, to_date)
    first_interest = @interest_changes.first
    interests = []
    @interest_changes.each do |interest|
      puts [from_date.to_s, to_date.to_s, interest.date.to_s].join("\t")
      if interest.date <= from_date
        first_interest = interest
      elsif interest.date < to_date
        interests << interest
      else
        break
      end
    end
    [first_interest] + interests
  end

end