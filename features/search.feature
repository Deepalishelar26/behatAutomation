Feature: This is to verify Search functionality

  Scenario: To verify search result for positive keyword
    Given I am on the homepage
    When I fill in "search_query" with "dresses"
    And I press the "submit_search" button
    Then I should be on "http://automationpractice.com/index.php?controller=search&orderby=position&orderway=desc&search_query=dresses&submit_search="
    And I should see "7 results have been found."

  Scenario: To verify search result for negative keyword
    Given I am on the homepage
    When I fill in "search_query" with "test"
    And I press the "submit_search" button
    Then I should be on "http://automationpractice.com/index.php?controller=search&orderby=position&orderway=desc&search_query=test&submit_search="
    And I should see "No results were found for your search"

#  Scenario Outline: Search for products
#    Given I am on the homepage
#    When I fill in "search_query" with "term"
#    And I press the "submit_search" button
#    Then I should be on "http://automationpractice.com/index.php?controller=search&orderby=position&orderway=desc&search_query=test&submit_search="
#    And I should see "<result>"
#    Examples:
#      | term | result|
#      | dresses | 7 results have been found.|
#      | test | No results were found for your search |
