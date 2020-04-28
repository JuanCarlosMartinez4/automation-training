# frozen_string_literal: true

# Converts bolivians to dollar and euro.
# @param bolivian amount of money.
def convert_bolivians_to_dollar_euro(bolivian)
  dollar_value = 0.14
  euro_value = 0.13
  dollar = dollar_value * bolivian
  euro = euro_value * bolivian
  [dollar, euro]
end

# Main menu to test the exercise.
puts 'Enter a mount in Bolivians: '
bolivian = gets.chomp.to_i
dollar, euro = convert_bolivians_to_dollar_euro(bolivian)
puts "Mount in Bolivians is: #{bolivian}"
puts "Mount in $us is: #{dollar}"
puts "Mount in Euro is: #{euro}"
