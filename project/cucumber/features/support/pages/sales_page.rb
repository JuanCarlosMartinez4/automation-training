# frozen_string_literal: true

require 'capybara'

def sales_page
  @sales_page ||= SalesPage.new
end

# Manages sales main page.
class SalesPage
  include Capybara::DSL

  attr_accessor :tab
  attr_accessor :title

  # Initializes SalesPage.
  def initialize
    @logo = page.find(:css, "a[title='My Store']")
  end

  # Waits until the page is loaded.
  def wait_until_page_is_loaded
    @logo
  end

  # Clicks on tab by name.
  def click_on_tab_by_name(name); end

  # Gets validation values from selected page.
  def gets_validation_values; end
end
