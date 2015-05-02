class Interest_Range

  def initialize(interest_changes)
    @interest_changes = interest_changes.sort_by { |interest| interest.date }
  end

  def relavant_interests(from_date, to_date)
    first_interest = @interest_changes.first
    interests = []
    @interest_changes.each do |interest|
      if interest.date < from_date
        first_interest = interest
      elsif to_date < interest.date
        interests << interest
      else
        break
      end
    end
    [first_interest] + interests
  end

end