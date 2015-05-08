# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#


def triangle(a, b, c)
  #TODO: Are the incoming values > 0 ?

  raise TriangleError, "Sides must be greater than 0." if [a,b,c].min <= 0
  raise TriangleError, "Summ of 2 sides can't be less or equal to 3th side" if a+b <= c || a+c <= b || b+c <= a

  if a == b && a == c
    return :equilateral
  elsif a == b || a == c || c == b
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

#For a test purposes only
#puts triangle(2, 4, 2)