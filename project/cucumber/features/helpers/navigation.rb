# frozen_string_literal: true

require 'capybara'

# Allows to navigate to some page by name.
# @param page name.
def navigate_to(page)
  pages = { 'Youtube Homepage' => 'https://www.youtube.com/?hl=es-419',
            'Google Homepage' => '/',
            'Sales website' => 'http://automationpractice.com' }
  pages.each do |key, value|
    if key.eql? page
      visit value
      break
    end
  end
end
