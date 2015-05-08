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
  puts TriangleError, "Sides must be greater than 0." unless [a,b,c].map { |x|
    x > 0
  }

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


puts triangle(1, 0, 3)