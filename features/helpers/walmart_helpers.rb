module WalmartHelpers
  def home_page
    @home_page ||= Panel::HomePage.new
  end

  def result_search_page
    @result_search_page ||= Panel::ResultSearchPage.new
  end

  def product_detail_page
    @product_detail_page ||= Panel::ProductDetailPage.new
  end

  def warranty_page
    @warranty_page ||= Panel::WarrantyPage.new
  end

  def cart_page
    @cart_page ||= Panel::CartPage.new
  end

  def login_page
    @login_page ||= Panel::LoginPage.new
  end

  def address_page
    @address_page ||= Panel::AddressPage.new
  end
end
