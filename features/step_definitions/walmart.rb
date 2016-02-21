Before do
  visit Settings.url
end

After do
  home_page.close
end

Given(/^I access the Walmart.com.br$/) do
  expect(home_page.title_page).to eq('Walmart.com + de 1 milhão de itens pra você. Clique Aqui!')
end

When(/^I search for "([^"]*)"$/) do |search_text|
  @text = search_text
  home_page.fill_search_product(search_text)
  home_page.click_search_button
end

Then(/^I see the search results$/) do
  expect(result_search_page.result_search).to eq("Resultados de busca para \"#{@text}\"")
end

When(/^I select the item "([^"]*)" of the list$/) do |product_num|
  @product = result_search_page.select_product(product_num)
end

Then(/^I see the details of the selected product page$/) do
  expect(product_detail_page.text_product).to eq(@product)
end

When(/^I add product to cart$/) do
  product_detail_page.click_add_to_cart
  expect(warranty_page.title_warranty_page).to eq('Contrate o Seguro Garantia Estendida Original e fique tranquilo ;)')
end

Then(/^I check if the product has been added to the cart$/) do
  warranty_page.click_continue
  home_page.click_go_to_cart
  visit 'https://www2.walmart.com.br/checkout/content/carrinho/'
  expect(cart_page.text_product_cart).to eq(@product)
end

When(/^I inform login$/) do
  cart_page.click_finalize_cart
  login_page.switch_frame_login
  login_page.login(Settings.user, Settings.pass)
  login_page.switch_frame_default
end

Then(/^I see the address page$/) do
  expect(address_page.text_address).to eq('Escolha um endereço para entrega')
end
