Given('I should see chart pria and choose jaket') do
  visit 'https://id.puma.com/in/pria/pakaian/jaket'
  expect(find('h1.product-results-title').text).to eq('JAKET')
  find(:xpath, '//*[@id="product-search-results"]/div[2]/div[4]/div/div[3]/div[1]/div[2]/div/div/div/div[2]/div/div/div/div[1]/div/div[1]/div/a/picture/img').click
  find('#swatch-0140').click
end

When('I check out chart pria') do
  find(:xpath, '//*[@id="page"]/div[3]/div[3]/div[1]/div[2]/div/div[9]/div/div[2]/button').click
  find(:xpath, '//*[@id="addToBagOverlay"]/div/div/div/div/div[3]/div[1]/a').click
  # find(:xpath, '//*[@id="addToBagOverlay"]/div/div/div/div/div[3]/div[2]/a').click Lihat Keranjang
end

Then('I payment chart pria') do
  expect(find('div.container.checkout-btn_container').text).to eq('HALAMAN PEMBAYARAN')
  find(:xpath, '//*[@id="cartPage"]/div[3]/div[2]/div[4]/a').click
end