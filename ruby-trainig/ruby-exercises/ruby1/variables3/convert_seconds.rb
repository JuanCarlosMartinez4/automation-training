# frozen_string_literal: true

seconds_value = 36_000

minute = 60
hour = 3600
day = 86_400

# Convert seconds to minutes.
minute_result = seconds_value / minute
puts "#{minute_result} minutes"

# Convert seconds to hours.
hour_result = seconds_value / hour
puts "#{hour_result} hours"

# Convert seconds to days.
day_result = seconds_value.to_f / day
puts "#{day_result} days"
