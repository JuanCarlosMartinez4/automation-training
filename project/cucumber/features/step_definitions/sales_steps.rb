# frozen_string_literal: true

require_relative '../helpers/navigation'
require_relative '../support/pages/sales_page'
require 'capybara'
require 'rspec/expectations'

# Goes to some web page.
Given(/^I open "([^"]*)"$/) do |web_page|
  navigate_to(web_page)
  page.driver.browser.manage.window.maximize
end

# Clicks on tab by name.
When(/^I click on (.*)$/) do |tab|
  sale = PageFactory.new
  @web_page = sale.get_page(tab)
  @web_page.click_on_tab_by_name(tab)
end

# Verifies the page.
Then(/^I should see (.*) page$/) do |title|
  contain = @web_page.gets_validation_values
  contain.each do |value|
    expect(value).to eq title
  end
end
