Install
-------------------

Ruby 2.2.2
PhantomJS

bundle install

Sample run
-------------------

  # running with poltergeist
  bundle exec cucumber features/walmart/search_product.feature USERNAME=your_username PASSWORD=your_password

  # running with selenium in browser
  IN_BROWSER=true bundle exec cucumber features/walmart/search_product.feature USERNAME=your_username PASSWORD=your_password

License
-------

[MIT License](LICENSE)
