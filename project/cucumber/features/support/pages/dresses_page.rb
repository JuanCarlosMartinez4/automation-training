# frozen_string_literal: true

require 'capybara'
require_relative 'sales_page'

def dresses_page
  @dresses_page ||= DressesPage.new
end

# Manages dresses page.
class DressesPage < SalesPage

  # Waits until dress page is loaded.
  def wait_until_page_is_loaded
    page.find(:css, 'span[class=category-name]')
  end

  # Clicks on dress tab.
  # @param name value.
  def click_on_tab_by_name(name)
    page.find(:css, "a[title=#{name}]").click
  end

  # Gets values to validate navigation.
  # @return array list of web elements' texts.
  def gets_validation_values
    values = []
    title = page.find(:css, 'span[class=category-name]').text
    navigation = page.find(:css, 'span[class=category-name]').text
    values.push(title)
    values.push(navigation)
    values
  end
end
