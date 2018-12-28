@javascript
Feature: This is to verify Contact us page

  Scenario: Contact us page with wait
    Given I am on the homepage
    When I click "Contact Us"
    And I wait for "5" sec
    Then I should be on "/index.php?controller=contact"
