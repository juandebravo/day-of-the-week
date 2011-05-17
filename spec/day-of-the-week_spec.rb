
require 'day-of-the-week'

describe DayOfTheWeek do

  it "should return Tuesday when year => 2011, month => 5, day => 17" do
    DayOfTheWeek::get_day({:year => 2011, :month => 5, :day => 17}).should eql("Tuesday")
  end

  it "should raise error if no year provided" do
    lambda {DayOfTheWeek::get_day({:month => 5, :day => 17})}.should raise_error(ArgumentError)
  end

  it "should raise error if no month provided" do
    lambda {DayOfTheWeek::get_day({:year => 2011, :day => 17})}.should raise_error(ArgumentError)
  end

  it "should raise error if year greater than actual" do
    lambda {DayOfTheWeek::get_day({:year => 2012, :day => 17})}.should raise_error(ArgumentError)
  end

end
