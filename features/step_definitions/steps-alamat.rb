Given('I click Alamat') do
  expect(find('a.breadcrumb-item-link').text).to eq('Beranda')
  click_link 'Tambah Alamat Baru'
end

When('I fill the form with valid data') do
  find('#dwfrm_address_addressId').send_keys('Rumah')
  find('#dwfrm_address_firstName').send_keys('qwe')
  fill_in 'dwfrm_address_lastName', with: 'asd'
  fill_in 'dwfrm_address_address1', with: 'Rumah 1 dipinggir jalan nomer seratus tiga'
  fill_in 'dwfrm_address_postalCode', with: '12345'
  find(:xpath, '//*[@id="dwfrm_address_states_stateCode"]/option[6]').click
  sleep(3)
end

When('I continue fill my credentials city') do
  expect(find('div.card-header.address-header').text).to eq('TAMBAH ALAMAT BARU')
  find(:xpath, '//*[@id="dwfrm_address_city"]/option[2]').click
end

Then('I continue fill my credensials district') do
  find(:xpath, '//*[@id="dwfrm_address_district"]/option[3]').click
  find('#dwfrm_address_address2').send_keys('Rumah 1 dipinggir jalan nomer seratus tiga')
  fill_in 'dwfrm_address_phone', with: '+6281234567890'
end

When('I click simpan button') do
  click_button 'Simpan'
end
