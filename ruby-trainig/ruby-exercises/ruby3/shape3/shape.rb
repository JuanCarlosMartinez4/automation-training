# frozen_string_literal: true

# Manages Circle information.
class Circle
  PI = 3.1416.to_f
  TWO = 2

  # Calculates area of circle.
  # @param radius of the circle.
  def calculate_circle_area(radius)
    area = PI * radius * TWO
    puts "The area is: #{area}"
  end

  # Calculates perimeter of circle.
  # @param radius of the circle
  def calculate_perimeter_area(radius)
    perimeter = PI * radius * radius
    puts "The perimeter is: #{perimeter}"
  end
end

# Main menu to test the exercise.
circle = Circle.new
circle.calculate_circle_area 8
circle.calculate_perimeter_area 10
