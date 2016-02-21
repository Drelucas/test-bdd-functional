module Panel
  class HomePage < Generic
    def title_page
      page.title
    end

    def fill_search_product(text)
      fill_in('suggestion-search', :with => text)
    end

    def click_search_button
      click_on('Procurar')
    end

    def click_go_to_cart
      page.find(:css, 'div.cart a.topbar-buttons.open-link.cart-link').click
    end

    def close
      page.driver.quit unless Capybara.javascript_driver == :poltergeist
    end
  end
end
