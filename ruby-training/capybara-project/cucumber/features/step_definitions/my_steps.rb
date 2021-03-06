# frozen_string_literal: true

require_relative '../helpers/navigation'

# Goes to some page by name.
Given(/^I go to "([^"]*)"$/) do |page|
  navigate_to(page)
end
