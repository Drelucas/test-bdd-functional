module Panel
  class WarrantyPage < Generic
    def title_warranty_page
      page.find(:css, 'p.page-title').text
    end

    def click_continue
      click_button('navegaCarrinho')
    end
  end
end
