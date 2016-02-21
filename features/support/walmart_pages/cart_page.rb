module Panel
  class CartPage < Generic
    def text_product_cart
      page.find(:css, 'div.product-list-item a.link').text
    end

    def click_finalize_cart
      page.find(:id,'btn-finalize-cart').click
    end
  end
end
