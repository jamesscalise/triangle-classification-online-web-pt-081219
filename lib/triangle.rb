class Triangle
  
  attr_accessor :sides
  
  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1
    @sides << side2
    @sides << side3
    @sides = @sides.sort
  end
  
  def kind
    if ((@sides[0] + @sides[1]) <= @sides[2])
      begin
        raise TriangleError
     rescue TriangleError => error
      puts error.message
      end
    elsif @sides[0] == @sides[1] && @sides[1] == @sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[0] == @sides[2]
      :isosceles
    else
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
    "bad"
   end
  end
end

triangle = Triangle.new(0,0,0)
puts triangle.kind