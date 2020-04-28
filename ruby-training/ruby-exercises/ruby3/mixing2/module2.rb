# frozen_string_literal: true

# module Week
module Week

  # Constant variable.
  FIRST_DAY = 'Sunday'

  # Prints message weeks in month.
  def self.weeks_in_month
    puts 'You have four weeks in a month'
  end

  # Prints message weeks in year.
  def self.weeks_in_year
    puts 'You have 52 weeks in a year'
  end
end

# Main menu to test the exercise.
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
