require 'calculator'

describe 'Calculator' do
  
  let (:interest_data) do 
    [
      "2015-02-01\t6,15\t4,27\t1,92\t4,07\t4,03\t4,05",
      "2015-01-01\t5,15\t3,27\t1,92\t3,07\t3,03\t3,05",
      "2014-12-10\t3,15\t2,27\t1,92\t2,07\t2,03\t2,05",
      "2014-01-10\t3,15\t2,27\t1,92\t2,07\t2,03\t2,05",
      "2013-12-10\t2,15\t1,27\t1,92\t1,07\t1,03\t1,05",
      "2012-12-10\t2,15\t1,27\t1,92\t1,07\t2,00\t1,00",
      "2011-12-10\t4,15\t4,15\t4,15\t4,15\t2,00\t1,00",
      "2010-12-10\t2,15\t1,27\t1,92\t1,07\t2,00\t1,00",
    ]
  end


  it 'Diff when one year simple' do
    calc = Calculator.new(interest_data)
    calc.average(Date.parse('2010-12-10'), :y1).should be_within(0.1).of(1)
  end

end