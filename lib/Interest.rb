require 'date'

class Interest
  attr_accessor :date, :y10, :y5, :y3, :y2, :y1, :m3, :line

  def initialize(line)
    @line = line
    args = line.split("\t")
    begin
      @date = Date.parse(args.first.gsub(' ', '-'))
      @y10, @y5, @y3, @y2, @y1, @m3 = args.drop(1).map {|string| string.tr(',','.').to_f }
    rescue Exception => e
      puts "Could not parse:"
      puts args
    end
  end

  def m3 
    if @m3 <= 0 then @y1 else @m3 end
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