module Panel
  class AddressPage < Generic
    def text_address
      page.find(:css, 'div.page-title h2').text
    end
  end
end
