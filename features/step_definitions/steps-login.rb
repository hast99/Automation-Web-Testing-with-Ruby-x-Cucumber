Given('I am on the login page') do
  page.driver.browser.manage.window.resize_to(1366, 768)
  visit 'https://id.puma.com/in/account/login'
end

When('I fill my credentials') do
  fill_in 'loginEmail', with: 'seleketep1@yopmail.com'
  fill_in 'loginPassword', with: 'WErkudoro99*'
end

When('I fill the wrong email') do
  fill_in 'loginEmail', with: 'seleketep100@yopmail.com'
  find('#login-form-password').send_keys('WErkudoro99*')
end

When('I fill the wrong password') do
  fill_in 'loginEmail', with: 'seleketep1@yopmail.com'
  find('#login-form-password').send_keys('WErkudoro9999*')
end

When('I click on the login button') do
  find(:xpath, '//*[@id="login"]/form/div[5]/button').click
end

Then('I should be logged in') do
  expect(find('h1.page-title').text).to eq('AKUN SAYA')
end

When('I should be not logged in') do 
  expect(find('div.alert.alert-danger').text).to eq('Login atau kata sandi tidak valid. Harap diingat bahwa kata sandi peka terhadap huruf besar/kecil. Coba lagi.')
end