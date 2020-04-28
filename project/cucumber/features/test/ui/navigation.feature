Feature: Sales website

  Scenario Outline: Navigation on sales menu
    Given I open "Sales website"
    When I click on <tab>
    Then I should see <tab> page
    Examples:
      | tab      |
      | Women    |
      | Dresses  |
      | T-shirts |
