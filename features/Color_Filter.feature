@javascript
Feature: Validate filters in 'Dresses'

Scenario: to check filters with their options
  Given I am on the homepage
  And I click "Dresses"
    Then I should see "Color" filter with "Orange" option
