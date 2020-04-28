# frozen_string_literal: true

# transform from celsius to fahrenheit.
# @param celsius value.
def celsius_to_fahrenheit(celsius)
  fahrenheit = (((9.to_f * celsius) / 5) + 32)
end

# Main menu to test the exercise.
puts celsius_to_fahrenheit(1)

# transform from fahrenheit to celsius.
# # @param fahrenheit value.
def fahrenheit_to_celsius(fahrenheit)
  celsius = (5.to_f * (fahrenheit - 32)) / 9
end

# Main menu to test the exercise.
puts fahrenheit_to_celsius(1)
