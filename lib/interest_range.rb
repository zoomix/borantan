class Interest_Range

  def initialize(interest_changes)
    @interest_changes = interest_changes.sort_by { |interest| interest.date }
  end

  def relavant_interests(from_date, to_date)
    first_interest = @interest_changes.first
    last_interest = @interest_changes.first
    interests = []
    @interest_changes.each do |interest|
      if interest.date <= from_date
        first_interest = interest
      elsif interest.date < to_date
        last_interest = interest
        interests << interest
      else
        break
      end
    end
    interests = [first_interest] + interests
    interests << make_ending_interest(last_interest, to_date) unless last_interest.date == to_date
    interests
  end

  private

  def make_ending_interest(interest, to_date)
    new_interest = interest.clone
    new_interest.date = to_date
    new_interest
  end

end