# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

Capybara.default_driver :selenium

After do |scenario|
  if scenario.failed?
    screenshot_name = scenario.__id__.to_s + '.png'
    page.driver.browser.save_screenshot("screenshots/#{screenshot_name}")
    embed("screenshots/#{screenshot_name}", 'image/png', 'Screenshot - failed')
  end
end
