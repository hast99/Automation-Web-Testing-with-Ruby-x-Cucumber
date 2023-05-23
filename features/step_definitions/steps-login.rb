Given('I am on the login page') do
visit('https://dafbinikiki.netlify.app/login')
end

When('I fill my credentials') do
  fill_in("Email", :with => "seleketep6@yopmail.com")
  fill_in("Kata sandi", :with => "Staging12345*")
end

When('I fill wrong email') do
  fill_in("Email", :with => "seleketep66@yopmail.com")
  fill_in("Kata sandi", :with => "Staging12345*")
end

When('I fill wrong password') do
  fill_in("Email", :with => "seleketep6@yopmail.com")
  fill_in("Kata sandi", :with => "Staging123456*")
end

When('I click on the login button') do
  click_on("Masuk")
end

Then('I should be on the home page') do
  expect(find('h1.text-medium-heading6.mb-4').text).to eql('Terkini')
end

