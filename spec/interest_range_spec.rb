require 'interest'
require 'interest_range'

describe 'Interest Range' do

  let (:all_interests) do 
    [
      Interest.new( "2015-02-01\t6,15\t4,27\t1,92\t4,07\t4,03\t4,05" ),
      Interest.new( "2015-01-01\t5,15\t3,27\t1,92\t3,07\t3,03\t3,05" ),
      Interest.new( "2014-05-10\t3,15\t2,27\t1,92\t2,07\t2,03\t2,05" ),
      Interest.new( "2014-01-10\t3,15\t2,27\t1,92\t2,07\t2,03\t2,05" ),
      Interest.new( "2013-12-10\t2,15\t1,27\t1,92\t1,07\t1,03\t1,05" )
    ]
  end

  it 'Fetches relavant dates for a year' do
    range = Interest_Range.new(all_interests)
    range_dates = range.relavant_interests( Date.parse("2014-01-10"), Date.parse("2015-01-10") )
                       .map { |interest| interest.date.to_s }
    range_dates.should == ["2014-01-10", "2014-05-10", "2015-01-01"]
  end

end