Feature: This is to verify the follow us section

  Scenario: To verify 'Follow Us' contains Facebook, Twitter, YouTube and G+ links
    Given I am on the homepage
    Then I should see the ".facebook a" element with the "href" attribute set to "https://www.facebook.com/groups/525066904174158/" in the "footer" region