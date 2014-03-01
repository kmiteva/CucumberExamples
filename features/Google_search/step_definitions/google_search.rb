require 'selenium-webdriver'
require 'anticipate'
require 'include'
require 'page-object'


Given(/^The customer who is access google site$/) do
  @driver.navigate.to "http://www.google.com"
end

When(/^The customer is searching for (.*)$/) do |staff|
  element = @driver.find_element(:name, 'q')
  element.send_keys staff
  element.submit

end

Then(/^The lists of searching staff should be displayed$/) do
   sleep(3)
    element = @driver.find_element(:class, "r")
  sleep(1)
  @driver.close
end





Given(/^the stable internet connection is established$/) do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
end