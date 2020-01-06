@footer
  Feature: Footer text and link verifications

    @javascript
    Scenario:  Validate 'Follow Us' section contains Facebook, Twitter, YouTube and G+ links
      When I visit "/"
    #Facebook link
      Then I should see the ".facebook a" element with the "href" attribute set to "https://www.facebook.com/groups/525066904174158/" in the "footer" region
          #Twitter link
      And I should see the ".twitter a" element with the "href" attribute set to "https://twitter.com/seleniumfrmwrk" in the "footer" region
    #YouTube link
      And I should see the ".youtube a" element with the "href" attribute set to "https://www.youtube.com/channel/UCHl59sI3SRjQ-qPcTrgt0tA" in the "footer" region
      #Google plus
      And I should see the ".google-plus a" element with the "href" attribute set to "https://plus.google.com/111979135243110831526/posts" in the "footer" region



   @javascript
    Scenario: Validate content of the newsletter section in the footer
     When I visit "/"
     And I wait for "3" sec
     #this will verify newsletter block
     Then I should see css selector "#newsletter_block_left"
     #this will verify newsletter input field
     And I should see css selector "#newsletter-input"
     #this will verify submit button
     And I should see css selector "#submitNewsletter"


   @javascript
   Scenario Outline: Validate newsletter block
     Given I am on the homepage
     When I fill in "email" with "<eid>"
     And I press the "submitNewsletter" button
     Then I should see text matching "<message>"
     Examples:
      | eid | message |
      | abc    |  Newsletter : Invalid email address. |
      | deepali@mailinator.com | Newsletter : You have successfully subscribed to this newsletter. |
      | deepali.jangam26@gmail.com    |  Newsletter : This email address is already registered.           |
    #Then I should see the success message containing "Newsletter : You have successfully subscribed to this newsletter."

