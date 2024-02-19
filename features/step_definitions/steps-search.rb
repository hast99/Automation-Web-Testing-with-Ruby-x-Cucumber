Then('I fill the search field with palermo') do
  fill_in 'q', with: 'palermo'
  find(:xpath, '//*[@id="siteHeader"]/div[1]/div/div[2]/div/div[2]/div/div[1]/div[1]/form/span').click
end

Then('I should see the product palermo in the search results') do
  find(:xpath, '//*[@id="product-search-results"]/div[2]/div[3]/div/div[2]/div[1]/div[3]/div/div/div/div[4]/div[1]/a').click
end