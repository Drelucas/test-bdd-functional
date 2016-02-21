require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'rspec/expectations'
require 'settingslogic'

Dir[File.dirname(__FILE__) + '/../helpers/*.rb'].each { |f| require f }

include RSpec::Expectations
include WalmartHelpers

ENV['ENV'] ||= 'test'

if ENV['IN_BROWSER']
  puts " ================================= "
  puts " = Execution Selenium in browser = "
  puts " ================================= "
  Capybara.default_driver = :selenium
  Capybara.default_max_wait_time = 10
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
      app, 
      :browser => :firefox
    )
  end
  Capybara.page.driver.browser.manage.window.maximize
else
  puts " ========================= "
  puts " = Execution Poltergeist = "
  puts " ========================= "
  Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(
      app,
      inspector: true,
      js_errors: false,
      window_size: [1280, 1024],
      phantomjs_options: ['--ignore-ssl-errors=yes','--ssl-protocol=tlsv1'],
      debug: false
    )
  end
  Capybara.default_driver    = :poltergeist
  Capybara.javascript_driver = :poltergeist
  Capybara.ignore_hidden_elements = true
end
Capybara.default_selector = :css
