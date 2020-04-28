# frozen_string_literal: true

orange = 2
water = 2
juice = orange + water
message = 'quantity of orange juice is:'
puts "the #{message} #{juice} liters"

chicken = 10
rice = 5
potatoes = 2
salad = 3
juice = 10
type_of_money = 'Bolivians'
puts "The cost of dinner is #{chicken + rice + potatoes + salad + juice}
#{type_of_money}"

puts "This a test error #{this_variable_does_not_exist}"

# The error showed in this file is because there is an variable called
# "this_variable_does_not_exist" which is not declare in any part of this file.
# When some variable is not declared previously the "undefined local variable"
# message is displayed on console as a result.
