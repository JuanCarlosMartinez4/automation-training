# frozen_string_literal: true

require_relative 'greets_module'

# Hello class.
class Hello
  include Greets
  include Greets2
end

# Main menu to test the exercise.
hello = Hello.new
hello.say_hi_friend
hello.say_good_night
hello.say_good_afternoon
hello.say_good_bye
hello.say_see_you_later
hello.say_take_care
