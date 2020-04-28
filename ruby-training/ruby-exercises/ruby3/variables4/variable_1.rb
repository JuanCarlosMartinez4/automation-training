# frozen_string_literal: true

# Tests local variables.
def test_local_variables
  value = 5
  another_value = 10
  addition_of_values = value + another_value
  puts addition_of_values
end

# Main menu to test the exercise.
# adding puts at the beginning of the method print its value.
puts test_local_variables

# In this way it is not adequate to call print the value,
# because the "value" is not received as a variable
# test_local_variables
# puts value
