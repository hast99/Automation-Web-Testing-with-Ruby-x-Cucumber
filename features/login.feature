Feature: Login Page Dafbin

Scenario: Success Login
Given I am on the login page
When I fill my credentials
And I click on the login button
Then I should be on the home page

Scenario: Invalid Login Email not registered
Given I am on the login page
When I fill wrong email
And I click on the login button

Scenario: Invalid Login wrong password
Given I am on the login page
When I fill wrong password
And I click on the login button
