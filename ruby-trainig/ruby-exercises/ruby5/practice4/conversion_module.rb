# frozen_string_literal: true

# module HandleTime
module HandleTime
  HOUR_IN_MINUTES = 0.0_166_667
  DAY_IN_HOURS = 0.0_416_667
  MONTH_IN_DAYS = 0.0_328_767
  def convert_minutes_to_hours(minutes)
    result = minutes * HOUR_IN_MINUTES
    "#{minutes} minutes represent: #{result} hours"
  end

  # Converts hours to days.
  # @param hours value.
  def convert_hours_to_days(hours)
    result = hours * DAY_IN_HOURS
    "#{hours} hours represent: #{result} days"
  end

  # Converts days to month.
  # 2@param days value.
  def convert_days_to_month(days)
    result = days * MONTH_IN_DAYS
    "#{days} days represent: #{result} month"
  end
end

# module HandleDistance
module HandleDistance
  MILLIMETERS_IN_CENTIMETERS = 0.1
  CENTIMETERS_IN_METERS = 0.01
  METERS_IN_KILOMETERS = 0.001

  # Converts millimeters to contimeters.
  # @param millimeters value.
  def millimeters_centimeters(millimeters)
    result = millimeters * MILLIMETERS_IN_CENTIMETERS
    "#{millimeters} millimeters represent: #{result} centimeters"
  end

  # Converts centimeters to meters.
  # @param centimeters value.
  def convert_centimeters_to_meters(centimeters)
    result = centimeters * CENTIMETERS_IN_METERS
    "#{centimeters} centimeters represent: #{result} meters"
  end

  # Converts meters to kilometers.
  # @param meters value.
  def convert_meters_to_kilometers(meters)
    result = meters * METERS_IN_KILOMETERS
    "#{meters} meters represent: #{result} kilometers"
  end
end
