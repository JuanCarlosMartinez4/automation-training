# frozen_string_literal: true

# Main menu to test the exercise.
puts 'Give me a number: '
number = gets.chomp.to_f
puts "The floating number is #{number}"

# Results
# Give me a number:
# 10
# The floating number is 10.0

# Give me a number:
# a
# The floating number is 0.0

# Give me a number:
# a10
# The floating number is 0.0

# Give me a number:
# 10a
# The floating number is 10.0
