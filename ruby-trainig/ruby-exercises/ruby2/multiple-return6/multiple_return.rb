# frozen_string_literal: true

# Calculates minutes and hours from seconds.
# @param seconds value.
# @return minutes and hours.
def calculate_minutes_and_hours(seconds)
  minute_value = 60
  hour_value = 3600
  minutes = seconds / minute_value
  hours = seconds / hour_value
  [minutes, hours]
end

# Main menu to test the exercise.
puts 'Enter quantity of seconds: '
seconds_value = gets.chomp.to_i
minute, hour = calculate_minutes_and_hours seconds_value
puts "Value in minutes is #{minute}"
puts "Value in hours is #{hour}"
