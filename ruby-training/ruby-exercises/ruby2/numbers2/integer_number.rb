# frozen_string_literal: true

# Main menu to test the exercise.
print 'Give me a number: '
number = gets.chomp.to_i
bigger = number * 100
puts "A big number is #{bigger}"

# Results
# Give me a number: 10a
# A big number is 1000

# Give me a number: a10
# A big number is 0

# Give me a number: a
# A big number is 0

# Give me a number: a10a
# A big number is 0
