require 'pry'

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1 , side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1==@side2 && @side1 == @side3 && @side2 == @side3
        :equilateral
    elsif @side1 == @side2 && ((@side1 || @side2) != @side3)
        :isosceles
    elsif @side1==@side3 && ((@side1 || @side3) != @side2)
        :isosceles
    elsif @side2 == @side3 && ((@side2 || @side3) !=@side1)
        :isosceles
    elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3
        :scalene
    end
  end
end

t1 = Triangle.new(3,3,3)
t2 = Triangle.new(3,4,5)
t3 = Triangle.new(3,4,4)
binding.pry


