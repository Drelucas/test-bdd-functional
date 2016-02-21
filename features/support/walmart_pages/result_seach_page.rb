module Panel
  class ResultSearchPage < Generic
    def result_search
      page.find(:css, 'h1.search-title').text
    end

    def select_product(num)
      num = num.to_i-1
      element = page.find(:css, "li.shelf-item.item-#{num}.with-buy-box figure a")
      product = element[:title]
      element.click
      product
    end
  end
end
