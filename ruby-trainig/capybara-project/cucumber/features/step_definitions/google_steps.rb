# frozen_string_literal: true

require 'capybara'
require 'selenium-webdriver'

# Sets values on search box.
And(/^I set "([^"]*)"$/) do |word|
  page.driver.browser.manage.window.maximize
  page.find(:css, 'input[title=Buscar]').set(word)
  WORD = word
end

# Starts to search the request.
When(/^I send the request$/) do
  page.first(:css, 'input[name=btnK]').click
end

# Verifies the result.
Then(/^the target value should be displayed on screen$/) do
  result = page.find('input[title=Search]')['value']
  result == WORD
end
