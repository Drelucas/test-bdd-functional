Feature: Make a Buy

  Scenario: Search and buy a product
  	Given I access the Walmart.com.br
  	When I search for "TV"
    Then I see the search results
    When I select the item "1" of the list
    Then I see the details of the selected product page
    When I add product to cart
    Then I check if the product has been added to the cart
    When I inform login
    Then I see the address page
