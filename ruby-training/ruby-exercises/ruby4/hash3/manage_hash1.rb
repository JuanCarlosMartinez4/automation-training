# frozen_string_literal: true

# Manages hash information.
class ManageHash
  attr_reader :hash_object

  # Creates a hash.
  def create_hash
    p 'Enter hash size: '
    hash_size = gets.chomp.to_i
    @hash_object = {}
    while @hash_object.size < hash_size
      p 'Enter key: '
      key = gets.chomp
      p 'Enter value: '
      value = gets.chomp
      @hash_object.store(key, value)
    end
  end

  # Prints keys of the hash dictionary.
  # @param dictionary values.
  def print_hash_keys(dictionary)
    p "keys are: #{dictionary.keys}"
  end

  # Prints values of the hash dictionary.
  # @param dictionary values.
  def print_hash_values(dictionary)
    p "values are: #{dictionary.values}"
  end

  # Prints hash dictionary.
  # @param dictionary values.
  def print_hash(dictionary)
    p "hash is: #{dictionary}"
  end

  # Verifies if a keys exist on the hash dictionary.
  # @param dictionary and key value.
  # @return true or false.
  def exist_key_on_hash(dictionary, key)
    dictionary.key?(key)
  end

  # Verifies if a value exist on the hash dictionary.
  # @param dictionary and value value.
  # @return true or false.
  def exist_value_on_hash(dictionary, value)
    dictionary.value?(value)
  end
end

# Main menu to test the exercise.
manage_hash = ManageHash.new
manage_hash.create_hash
dictionary = manage_hash.hash_object
manage_hash.print_hash_keys(dictionary)
manage_hash.print_hash_values(dictionary)
manage_hash.print_hash(dictionary)
p 'Enter key to find in hash: '
key = gets.chomp
p manage_hash.exist_key_on_hash(dictionary, key)
p 'Enter value to find in hash: '
value = gets.chomp
p manage_hash.exist_value_on_hash(dictionary, value)
