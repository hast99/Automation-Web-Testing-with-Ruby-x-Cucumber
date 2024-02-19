Given('I am on the register page') do
  visit 'https://id.puma.com/in/account/login?action=register'
end

When('I fill my credentials register') do
  fill_in 'dwfrm_profile_customer_firstname', with: 'Test'
  fill_in 'dwfrm_profile_customer_lastname', with: 'Test' 
  fill_in 'dwfrm_profile_customer_email', with: 'seleketep233@yopmail.com'
  fill_in 'dwfrm_profile_registration_password', with: 'WErkudoro99*'
  fill_in 'dwfrm_profile_customer_phone', with: '+6289665884055'
  find(:xpath, '//*[@id="register"]/form/div[6]/div[1]/span/label[2]').click
end

When('I click on the register button') do
find(:xpath, '//*[@id="register"]/form/div[8]/button').click
end

Then('I should be redirected to the dashboard page') do
  expect(find('a.breadcrumb-item-link').text).to eq('Beranda')
end

When('I fill register with wrong email') do
  fill_in 'dwfrm_profile_customer_firstname', with: 'Test'
  fill_in 'dwfrm_profile_customer_lastname', with: 'Test' 
  fill_in 'dwfrm_profile_customer_email', with: '_____@example.com'
  fill_in 'dwfrm_profile_registration_password', with: 'WErkudoro99*'
  fill_in 'dwfrm_profile_customer_phone', with: '+6289665884055'
  find(:xpath, '//*[@id="register"]/form/div[6]/div[1]/span/label[2]').click
end

When('I fill register with one char') do
  fill_in 'dwfrm_profile_customer_firstname', with: 'q'
  fill_in 'dwfrm_profile_customer_lastname', with: 'w' 
  fill_in 'dwfrm_profile_customer_email', with: 'seleketep233@yopmail.com'
  fill_in 'dwfrm_profile_registration_password', with: 'WErkudoro99*'
  fill_in 'dwfrm_profile_customer_phone', with: '+6289665884055'
  find(:xpath, '//*[@id="register"]/form/div[6]/div[1]/span/label[2]').click
end

When('I fill register with wrong password') do
  fill_in 'dwfrm_profile_customer_firstname', with: 'Test'
  fill_in 'dwfrm_profile_customer_lastname', with: 'Test' 
  fill_in 'dwfrm_profile_customer_email', with: 'seleketep233@yopmail.com'
  fill_in 'dwfrm_profile_registration_password', with: '!@#$%^&*&^%'
  fill_in 'dwfrm_profile_customer_phone', with: '+6289665884055'
  find(:xpath, '//*[@id="register"]/form/div[6]/div[1]/span/label[2]').click
end

When('I fill register with wrong email that is already registered') do
  fill_in 'dwfrm_profile_customer_firstname', with: 'Test'
  fill_in 'dwfrm_profile_customer_lastname', with: 'Test' 
  fill_in 'dwfrm_profile_customer_email', with: 'seleketep1@yopmail.com'
  fill_in 'dwfrm_profile_registration_password', with: 'WErkudoro99*'
  fill_in 'dwfrm_profile_customer_phone', with: '+6289665884055'
  find(:xpath, '//*[@id="register"]/form/div[6]/div[1]/span/label[2]').click
end

Then('I should be not be able to register') do
  expect(find('div.alert.alert-danger').text).to eq('Nama pengguna sudah ada.')
end