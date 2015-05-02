class Interest
  attr_accessor :date, :y10, :y5, :y3, :y2, :y1, :m3

  def initialize(line)
    args = line.split("\t")
    @date = args.first
    @y10, @y5, @y3, @y2, @y1, @m3 = args.drop(1).map {|string| string.tr(',','.').to_f }
  end
  
end