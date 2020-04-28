# frozen_string_literal: true

# Manages Person information
class Person
  attr_writer :name
  attr_reader :name
end

# Main menu to test the exercise.
person = Person.new
person.name = 'Juan'
puts "Hi #{person.name}"
puts "#{person.name} Have a nice day"
