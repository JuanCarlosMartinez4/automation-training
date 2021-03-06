# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'yaml'
require 'pathname'

AfterConfiguration do
  # Load global configuration parameter
  configuration = load_app_config_file('config.yml')
  # configure capybara
  config_capybara = configuration['capybara']
  default_host = (config_capybara['default']['host']).to_s
  default_wait = config_capybara['default']['wait_time'].to_i
  drivers = config_capybara['drivers']
  Capybara.configure do |config|
    Capybara.default_driver = :selenium
    Capybara.run_server = false
    Capybara.app_host = default_host
    Capybara.javascript_driver = :selenium
    Capybara.default_max_wait_time = default_wait
  end

  drivers.each do |driver|
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, browser: driver.to_sym)
    end
  end
end
