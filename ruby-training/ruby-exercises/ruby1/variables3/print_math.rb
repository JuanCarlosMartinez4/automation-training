# frozen_string_literal: true

# Variables
value_a = 25
value_b = 30
value_c = 6
value10 = 10
value20 = 20
value2 = 2
value1 = 1
value4 = 4
value3 = 3
value5 = 5
value6 = 6
value8 = 8
value11 = 11
value7 = 7

puts 'I will now count fruits:'
puts "Bananas: #{value_a + value_b / value_c}"
puts "Apples: #{(value10 + value20) - value2 * value1 / value4}"

puts 'Now I will count the potato:'
sum_numbers = value3 + value2 + value1
puts sum_numbers - value5 + value4 % value2 - value1 / value4 + value6

puts 'Is it true that 3 + 2 < 5 + 5?'
puts value3 + value2 < value5 + value5

puts 'Is it true that 8 + 2 == 5 + 5 ?'
puts value8 + value2 == invalid_variable + value5

puts 'Is it true that 8 + 2 >= 5 + 2 ?'
puts value8 + value2 >= value5 + value2

puts "What is 11 % 2 ? It is #{value11 % value2}"
puts "What is 7 ** 3 ? It is #{value7**value3}"

# The error showed in this file is because there is an variable called
# "invalid_variable" which is not declare in any part of this file.
# When some variable is not declared previously the "undefined local variable"
# message is displayed on console as a result.
