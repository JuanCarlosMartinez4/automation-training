# frozen_string_literal: true

require 'singleton'

# Manages Person information.
class Person
  attr_accessor :username
  attr_accessor :password
  attr_accessor :email

  # Initializes person.
  # @param username, password, email values.
  def initialize(username, password, email)
    @username = username
    @password = password
    @email = email
  end
end

# Manages RegularExpresion behavior.
class RegularExpresion

  # Verifies username value.
  # @param username value.
  def verify_username(username)
    if (username.match?(/[a-z0-9_]+\b/))
      p 'Match user'
    else
      p 'No match'
    end
  end

  # Verifies password value.
  # @param password value.
  def verify_password(password)
    if password.match?(/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/)
      p 'Match pass'
    else
      p 'No match'
    end
  end

  # Verifies email value.
  # @param email value.
  def verify_email(email)
    regex = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    if email =~ regex
      p 'Match email'
    else
      p 'No match'
    end
  end
end

# Main menu to test the exercise.
person1 = Person.new('ali10_', 'alifuente456L', 'alicia@hotmail.com.bo')
regex = RegularExpresion.new
regex.verify_username(person1.username)
regex.verify_password(person1.password)
regex.verify_email(person1.email)
