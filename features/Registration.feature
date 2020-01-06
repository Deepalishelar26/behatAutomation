@javascript
Feature: This is to verify the Registration

  Scenario: To verify with valid values
    Given I am on the homepage
    When I click "Log in to your customer account"
    And I fill in "email_create" with "deepali@mailinator.com"
    And I press the "SubmitCreate" button
#    Then I should be on "/index.php?controller=authentication&back=my-account#account-creation"
    And I select the radio button "Mrs." with the id "id_gender2"
    And I fill in the following:
      | customer_firstname | Deepali |
      | customer_lastname | S |
      | passwd | test123 |
    And I select "26" from "days"
    And I select "10" from "months"
    And I select "1990" from "years"
    And I check "optin"
    And I fill in the following:
    |firstname|Deepali|
    |lastname | S |
    |address1 | Mulund|
    |city     | Mumbai|
    And I select "10" from "id_state"
    And I fill in the following:
    |postcode | 400082|
    |phone_mobile| 9898989899|
    And I press the "submitAccount" button








