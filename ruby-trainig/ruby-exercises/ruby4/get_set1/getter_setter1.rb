# frozen_string_literal: true

# Manages Item information
class Item

  # Getter Setter of item_name.
  attr_reader :item_name

  # Initializes item.
  # @param item_name, quantity values.
  def initialize(item_name, quantity)
    @item_name = item_name
    @quantity = quantity
  end
end

# Main menu to test the exercise.
item = Item.new('tv', 1)
puts item.item_name

# If I delete item_name method the script does not work, because
# using "item.item_name" we are using the method and not the variable
