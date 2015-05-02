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
  
end