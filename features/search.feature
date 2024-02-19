Feature: Chart Pria Page Puma

Scenario: Search
Given I am on the login page
When I fill my credentials
And I click on the login button
Then I should be logged in

And I fill the search field with palermo
Then I should see the product palermo in the search results