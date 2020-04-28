# frozen_string_literal: true

# Manages Polygon information.
class Polygon
  @@sides = 10

  # Manage sides of a polygon.
  def self.sides
    @@sides
  end
end

puts Polygon.sides

# Manages triangle information.
class Triangle < Polygon
  @@sides = 3
end

puts Triangle.sides
puts Polygon.sides

# Manages Rectangle information.
class Rectangle < Polygon
  @@sides = 4
end

# Main menu to test the exercise.
puts Triangle.sides
puts Polygon.sides
