# frozen_string_literal: true

require_relative '../helpers/navigation'
require 'capybara'

# Open a web page by name.
Given(/^I open "([^"]*)"$/) do |web_page|
  navigate_to(web_page)
  page.driver.browser.manage.window.maximize
end

# Clicks on a tab.
When(/^I click on (.*)$/) do |tab|
  page.find(:css, "a[title=#{tab}]").click
end

# Verifies the title of the page.
Then(/^I should see (.*) page$/) do |title|
  item = page.find(:css, 'span[class=category-name]').text
  item.eql? title
end
