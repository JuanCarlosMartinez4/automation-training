# frozen_string_literal: true

# Manages array numbers
class ArrayNumber

  # Generates an array.
  # @return array list.
  def generate_array
    puts 'Enter array size: '
    size = gets.chomp.to_i
    @my_array = []
    @my_array.push(gets.chomp) while @my_array.size < size
    @my_array
  end

  # Prints array's value.
  # @param array list.
  def get_array_value(array)
    puts array.inspect
  end
end

# Main menu to test the exercise.
array_number = ArrayNumber.new
array_result = array_number.generate_array
array_number.get_array_value(array_result)
