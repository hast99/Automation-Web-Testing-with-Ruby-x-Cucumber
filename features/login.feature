Feature: Login Page Puma

Scenario: Positive Login
Given I am on the login page
When I fill my credentials
And I click on the login button
Then I should be logged in

Scenario: Negatice Login With Wrong Email
Given I am on the login page
When I fill the wrong email
And I click on the login button
And I should be not logged in

Scenario: Negatice Login With Wrong Password
Given I am on the login page
When I fill the wrong password
And I click on the login button
And I should be not logged in