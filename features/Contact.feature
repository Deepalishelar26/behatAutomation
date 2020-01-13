@javascript
Feature: This is to verify Contact us page

  Scenario: Contact us page with wait
    Given I am on the homepage
    When I click "Contact Us"
    And I wait for "5" sec
    Then I should be on "/index.php?controller=contact"
    And I should see "Customer service - Contact us"
    #This will verify Subject Heading field
    And I should see css selector "#id_contact"
    #This will verify email field
    And I should see css selector "#email"
    #This will verify Order reference
    And I should see css selector "#id_order"
    #This will verify Attach file field
    And I should see css selector "#fileUpload"
    #This will verify Message field
    And I should see css selector "#message"
    When I select "Customer service" from "id_contact"
    And I fill in the following:
    | email | deepali@mailinator.com |
    | id_order | xyz                 |
    And I fill in "message" with:
    """

    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.
    """

    And I attach the file "grofers.jpeg" to "fileUpload"

    And I press the "submitMessage" button
    And I wait for "3" sec
    Then I should see "Your message has been successfully sent to our team."
