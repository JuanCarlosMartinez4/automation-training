# frozen_string_literal: true

# Converts money from bolivians to dollar.
# @param name, price values.
# @param destination by default is CBBA.
# @return price in dollars.
def convert_money(name, price, destination = 'CBBA')
  puts name
  puts destination
  dollar = 0.14
  price_in_dollar = price * dollar.to_f
end

# Main menu to test the exercise.
puts convert_money'Juan', 100
