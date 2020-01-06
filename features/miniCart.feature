Feature: This is to verify the cart default text

  Scenario: To verify cart page is showing default text when empty
    Given I am on the homepage
    Then I should see "(empty)" in the ".shopping_cart" element
    When I click "View my shopping cart"
    Then I should be on "/index.php?controller=order"
    And I should see text matching "Your shopping cart is empty."

