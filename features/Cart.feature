Feature: Check cart items

  Scenario: validate cart items
    Given I am on the homepage
    When I click ".product-container .product-name"
    And I press the "Add to cart" button
    And I wait for AJAX to finish
    And I click "Proceed to checkout"
    And I should see "total_price"

