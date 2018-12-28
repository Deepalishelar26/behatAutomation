@javascript
Feature: This is to verify the product details

  Scenario: To verify Product displaying details as image, title and price
    Given I am on the homepage
    Then I should see an ".product-image-container" element
    And I should see an ".product-name" element
    And I should see an ".content_price" element


 Scenario: To verify clicking on product, redirects on product detailed page
   Given I am on the homepage
   And I wait for AJAX to finish
   When I click ".product-container .product-name"
   Then I should be on "/index.php?id_product=1&controller=product"


