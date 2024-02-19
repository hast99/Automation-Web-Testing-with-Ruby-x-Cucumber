Feature: Register Page Puma

Scenario: Positive Register
Given I am on the register page
When I fill my credentials register
And I click on the register button
Then I should be redirected to the dashboard page

Scenario: Negative Register Wrong Email
Given I am on the register page
When I fill register with wrong email
And I click on the register button
Then I should be not be able to register

Scenario: Negative Register one char First Name and Last Name
Given I am on the register page
When I fill register with one char 
And I click on the register button
Then I should be not be able to register

Scenario: Negative Register Password All Symbols
Given I am on the register page
When I fill register with wrong password
And I click on the register button
Then I should be not be able to register

Scenario: Negative Register Email Is Registered
Given I am on the register page
When I fill register with wrong email that is already registered
And I click on the register button
Then I should be not be able to register