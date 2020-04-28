# frozen_string_literal: true

require 'singleton'

# Manages Profile information.
class Profile
  attr_accessor :users

  include Singleton

  # Initializes profile with values by default.
  def initialize
    @user = 'Guest'
    @message = 'Welcome to the city'
    @visitors = 0
    @users = {}
  end

  # Adds item to users hash.
  # @param user, message values.
  def add_item(user, message)
    @user = user
    @message = message
    @visitors += 1
    @users.store(@user, @message)
  end
end

# Main menu to test the exercise.
profile = Profile.instance
profile.add_item('Maria', 'Hello')
profile.add_item('Juan', 'World')
profile.add_item('Julia', 'Nice')

# Prints the key of last user.
p profile.users.keys.last

# Prints the key of last user.
p profile.users.values.last

# Singleton allows to use only one instance,
# in this case, I am using profile to add many users
# and register the visits.
