Feature: This is to verify the Newsletter working

  Scenario: To verify that user can subscribe for newsletter and gets successful message on valid email address
    Given I am on the homepage
    When I fill in "email" with "deepali12@mailinator.com"
    And I press the "submitNewsletter" button
    Then I should see text matching "Newsletter : You have successfully subscribed to this newsletter."
#    Then I should see the success message containing "Newsletter : You have successfully subscribed to this newsletter."
