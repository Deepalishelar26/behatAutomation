Feature: This is to verify the header of the homepage

  Scenario: To verify phone number text in the header
    Given I am on the homepage
    Then I should see "Call us now: 0123-456-789"

  Scenario: To verify Contact Us link is redirecting on correct URL
    Given I am on the homepage
    When I click "Contact Us"
    Then I should be on "/index.php?controller=contact"
    And I should see "Customer service - Contact us"

  Scenario: To verify Sign in link
    Given I am on the homepage
    When I click "Log in to your customer account"
    Then I should be on "/index.php?controller=authentication&back=my-account"
