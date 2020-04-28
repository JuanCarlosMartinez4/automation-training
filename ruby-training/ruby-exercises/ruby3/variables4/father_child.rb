# frozen_string_literal: true

# Manages Father information.
class Father
  @@money_amount = 500

  # Manage money amount of father instance.
  def self.money_amount
    @@money_amount
  end
end

# Manages Daughter information.
class Daughter < Father

  # Subtracts father's money amount.
  def money_amount
    @@money_amount -= 100
    'taking 100'
  end
end

# Manages Son1 information.
class Son1 < Father

  # Subtracts father's money amount.
  def money_amount
    @@money_amount -= 200
    'taking 200'
  end
end

# Manages Son2 information.
class Son2 < Father

  # Subtracts father's money amount.
  def money_amount
    @@money_amount -= 50
    'taking 50'
  end
end

# Main menu to test the exercise.
puts Daughter.new.money_amount
puts Son1.new.money_amount
puts Son2.new.money_amount
puts Father.money_amount

