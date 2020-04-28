# frozen_string_literal: true

# Manages controls statements
class ControlStatement
  attr_accessor :name
  attr_accessor :age
  YEAR = 8_760
  HOUR = 0.000114155

  # Calculates years in hours.
  # @return age in hours or message.
  def calculate_years_in_hours
    @age < 35 ? @age * YEAR : 'age cannot be calculated'
  end

  # Converts hours to years.
  # @param value in hours.
  # @return hours value.
  def convert_to_year(value)
    value.is_a?(String) ? value : value *= HOUR
  end

  # Verifies age in cases.
  # @param value int.
  def verify_age(value)
    case value
    when 0..5 then value *= YEAR
                   p "You are a baby #{value}"
    when 6..12 then value *= YEAR
                    p "You are a child #{value}"
    when 13..21 then value *= YEAR
                     p "You are a baby #{value}"
    when 22..35 then value *= YEAR p
                     "You are a young people #{value}"
    else puts value
    end
  end
end

# Menu to test the exercise.
control = ControlStatement.new
control.name = 'Juan'
control.age = 10
value = control.calculate_years_in_hours
result = control.convert_to_year(value)
control.verify_age(result)
