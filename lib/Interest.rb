require 'date'

class Interest
  attr_accessor :date, :y10, :y5, :y3, :y2, :y1, :m3

  def initialize(line)
    args = line.split("\t")
    @date = Date.parse(args.first)
    @y10, @y5, @y3, @y2, @y1, @m3 = args.drop(1).map {|string| string.tr(',','.').to_f }
  end

  def m3 
    @m3 || @y1
  end

  def self.years(interest_duration) 
    case interest_duration
    when :y10
      return 10
    when :y5
      return 5
    when :y3
      return 3
    when :y2
      return 2
    when :y1
      return 1
    end
  end
  
end