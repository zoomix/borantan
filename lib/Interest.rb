class Interest
  attr_accessor :y10, :y5, :y3, :y2, :y1, :m3

  def initialize(args)
    @y10, @y5, @y3, @y2, @y1, @m3 = args.split("\t").drop(1).map {|string| string.tr(',','.').to_f }
  end
  
end