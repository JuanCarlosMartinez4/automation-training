Feature: Google Search

  Scenario: Verify google search
    Given I go to "Google Homepage"
      And I set "Automation testing with Capybara"
    When I send the request
    Then the target value should be displayed on screen