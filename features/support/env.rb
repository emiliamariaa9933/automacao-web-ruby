require "selenium-webdriver"
require "capybara"
require 'capybara/cucumber'
require "rspec"
require 'site_prism'
require 'webdrivers'



Capybara.register_driver :insecure_selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    desired_capabilities: { accept_insecure_certs: false }
  )

end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :insecure_selenium
  config.app_host = 'http://automationpractice.com/index.php/'
end

Capybara.default_max_wait_time = 5

Capybara.page.driver.browser.manage.window.maximize

Capybara.javascript_driver = :webkit