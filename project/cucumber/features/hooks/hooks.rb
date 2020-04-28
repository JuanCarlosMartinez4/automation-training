# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'
require 'base64'

Capybara::Screenshot.autosave_on_failure = false
Capybara::Screenshot.prune_strategy = :keep_last_run

# Allows to add screenshot of failed scenario after its execution.
After do |scenario|
  if scenario.failed?
    name = scenario.__id__.to_s + '.png'
    page.driver.browser.save_screenshot("reports/screenshots/#{name}")
    embed("reports/screenshots/#{name}", 'image/png', 'Screenshot - failed')
    add_browser_logs
  end
end

# Adds browser logs.
def add_browser_logs
  time_now = Time.now
  current_url = Capybara.current_url.to_s
  logs = page.driver.browser.manage.logs.get(:browser).map do |line|
    [line.level, line.message]
  end
  logs.reject! { |line| %w[WARNING INFO].include?(line.first) }
  logs.any? == true
  embed(time_now.strftime('%Y-%m-%d-%H-%M-%S' + "\n") +
            ('Current URL: ' + current_url + "\n") +
            logs.join("\n"), 'text/plain', 'BROWSER ERROR')
end
