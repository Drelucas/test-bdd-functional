module Panel
  class ProductDetailPage < Generic
    def text_product
      page.find(:css, 'div.product-title-header h1').text
    end

    def click_add_to_cart
      page.find(:css, 'div.buy-button-wrapper button.buy-button.btn.btn-success').click
    end
  end
end
