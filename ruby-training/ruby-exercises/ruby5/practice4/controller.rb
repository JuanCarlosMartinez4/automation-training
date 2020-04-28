# frozen_string_literal: true

require_relative 'conversion_module'
require 'singleton'

# Manages Registration information.
class Registration
  attr_accessor :users

  # Initializes registration.
  def initialize
    @username = nil
    @id = nil
    @users = {}
  end

  # Validates amount of users.
  # @return true or false.
  def validate_amount_of_users
    @users.size < 15
  end

  # Ask for username and user id to add a user.
  def add_user
    p 'Add username: '
    @username = gets.chomp.to_s
    p 'Add ID: '
    @id = gets.chomp.to_s
    if @username =~ /^(?=.*[a-z])(?=.*[0-9]).{,11}$/
      @users.store(@id, @username) if validate_amount_of_users
    else
      p 'invalid username'
    end
  end
end

# Manages Calculations information.
class Calculation < Registration
  include HandleTime
  include HandleDistance
  include Singleton

  # Initializes calculation.
  def initialize
    super
    @time_array_names = []
    @distance_array_names = []
  end

  # Gets time operation of users.
  def time_array_names_method
    @time_array_names
  end

  # Gets distance operation of users.
  def distance_array_names_method
    @distance_array_names
  end

  # Does the calculation selected.
  def do_calculation(calculation_type, name)
    p 'enter value to convert'
    case calculation_type
    when 1 then p convert_minutes_to_hours(gets.chomp.to_i)
                @time_array_names.push(name)
    when 2 then p convert_hours_to_days(gets.chomp.to_i)
                @time_array_names.push(name)
    when 3 then p convert_days_to_month(gets.chomp.to_i)
                @time_array_names.push(name)
    when 4 then p millimeters_centimeters(gets.chomp.to_i)
                @distance_array_names.push(name)
    when 5 then p convert_centimeters_to_meters(gets.chomp.to_i)
                @distance_array_names.push(name)
    when 6 then p convert_meters_to_kilometers(gets.chomp.to_i)
                @distance_array_names.push(name)
    else
      p 'No valid conversion'
    end
  end

  # Selects calculation of each user.
  # @param users hash.
  def select_calculation_type(users)
    users.each do |key, name|
      p "User #{name}"
      p 'Select conversion type: '
      p 'From minutes to hours: 1'
      p 'From hours to days: 2'
      p 'From days to month: 3'
      p 'From millimeters to centimeters: 4'
      p 'From centimeters to meters: 5'
      p 'From meters to kilometers: 6'
      calculation_type = gets.chomp.to_i
      do_calculation(calculation_type, name)
    end
  end
end

# Main menu to test the exercise.
calculation = Calculation.instance
calculation.add_user
calculation.add_user
users = calculation.users
calculation.select_calculation_type(users)
time = calculation.time_array_names_method
p "Users that converted time are: #{time}"
distance = calculation.distance_array_names_method
p "Users that converted distance are: #{distance}"
