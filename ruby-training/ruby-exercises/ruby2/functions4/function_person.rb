# frozen_string_literal: true

# Converts year of a person in hours.
# @param name, age of a person.
def person_age(name, age)
  year_value = 8_760
  age_in_hours = age * year_value
  puts "Hi #{name}"
  puts "Your #{age} years in hours is: #{age_in_hours}"
end

# Main menu to test the exercise.
person_age('Juan', 25)
