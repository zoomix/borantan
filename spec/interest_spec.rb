require 'interest'

describe Interest do

  let (:full) { Interest.new( "2015-03-27	3,15	2,27	1,92	2,07	2,03	2,05" ) }
  let (:partial) { Interest.new( "2014-03-27	3,15	2,27	1,92	2,07	2,03" ) }

  it "should assign date" do
    full.date.should == '2015-03-27'
  end

  it "should assign y10" do
    full.y10.should == 3.15
  end

  it "should assign y5" do
    full.y5.should == 2.27
  end

  it "should assign y3" do
    full.y3.should == 1.92
  end

  it "should assign y2" do
    full.y2.should == 2.07
  end

  it "should assign y1" do
    full.y1.should == 2.03
  end

  it "should assign m3" do
    full.m3.should == 2.05
  end

  it "should use y1 when m3 is missing" do
    partial.m3.should == partial.y1
  end

end