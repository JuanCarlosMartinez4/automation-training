# frozen_string_literal: true

# Manages Item information
class Item
  attr_accessor :item_name
  attr_accessor :item_name

  # Initializes item.
  # @param quantity value.
  def initialize(quantity)
    @quantity = quantity
  end
end

# Main menu to test the exercise.
item = Item.new(1)
puts item.item_name = 'Radio'
