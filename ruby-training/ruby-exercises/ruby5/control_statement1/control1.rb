# frozen_string_literal: true

# Manages PersonList information.
class PersonList
  attr_accessor :persons
  attr_accessor :quantity

  # Initializes person list.
  # @param quantity value.
  def initialize(quantity)
    @persons = []
    @quantity = quantity
  end

  # Adds person to persons list.
  # @param person object.
  def add_person(person)
    if @persons.size < @quantity
      @persons.append(person)
    end
  end

  # Gets name and id of the person.
  # @return hash values.
  def get_name_and_id
    hash_list = {}
    @persons.each { |item| hash_list.store(item.id, item.name)}
    hash_list
  end

  # Converts person name to uppercase.
  # @param hash_list.
  # @return uppercase name array.
  def uppercase_array_name(hash_list)
    name_array = []
    hash_list.each_with_index do |(key, value), index|
      value = value.upcase
      print"#{index} "
      p value
      name_array.append(value)
    end
    name_array
  end

  # Says good bye to each name.
  # @param names_list value.
  def say_good_bye(names_list)
    names_list.each { |name| p "good bye #{name}" }
  end
end

# Manages Person information.
class Person
  attr_accessor :id
  attr_accessor :name

  # Initializes person.
  # @param id value.
  # @param name value.
  def initialize(id, name)
    @id = id
    @name = name
  end
end

# Main menu to test the exercise.
person1 = Person.new(11, 'Ali')
person2 = Person.new(12, 'Juan')
person3 = Person.new(13, 'Paola')
person_list = PersonList.new(3)
person_list.add_person(person1)
person_list.add_person(person2)
person_list.add_person(person3)
dictionary = person_list.get_name_and_id
names_list = person_list.uppercase_array_name(dictionary)
person_list.say_good_bye(names_list)
