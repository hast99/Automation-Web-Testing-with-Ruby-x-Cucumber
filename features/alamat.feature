Feature: Alamat Page Puma

Scenario: Positive Alamat
Given I am on the login page
When I fill my credentials
And I click on the login button
Then I should be logged in

And I click Alamat
And I fill the form with valid data
And I continue fill my credentials city
And I continue fill my credensials district
And I click simpan button
