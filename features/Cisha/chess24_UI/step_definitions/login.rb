require 'selenium-webdriver'
require 'anticipate'
require 'include'
require 'page-object'
require 'rspec/expectations'



Given(/^a registered customer is on site$/) do

  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
  @driver.navigate.to "https://chess24.com/"

end

When(/^the customer tries to login with correct password$/) do
  sleep 3
 credentials = LoginOnUI.new("kalina.1975@abv.bg","Proxiad%2" )
 @email = @driver.find_element(:id, 'LoginForm_emailOrUsername').send_key(credentials.get_email)
 @password = @driver.find_element(:id, 'LoginForm_password').send_key(credentials.get_password)
 @driver.find_element(:name, 'yt0').submit

end

Then(/^the login attempt should be successful$/) do
  sleep 2
  @driver.find_element(:class, "mainMenuTopLevel")
  #sleep 3
  #@driver.find_element(:class, "current").click
  #sleep 3
  #@driver.find_element(:class, "shiftable").click

  @driver.close
end

When(/^the customer tries to login with incorrect email and password$/) do
  account = (0...10).map{97.+(rand(25)).chr}.join + "@yahoo.com"
  pass = rand(00000000...9999999)
  credentials = LoginOnUI.new(account.to_s,pass.to_s )
  @email = @driver.find_element(:id, 'LoginForm_emailOrUsername').send_key(credentials.get_email)
  @password = @driver.find_element(:id, 'LoginForm_password').send_key(credentials.get_password)
  @driver.find_element(:name, 'yt0').submit
end

Then(/^the login attempt should be unsuccessful$/) do
  @driver.page_source.should include  'Please fix the following input errors:'

  @driver.close
end

When(/^the customer tries to login with invalid email$/) do

  account = (0...10).map{97.+(rand(25)).chr}.join
  pass = rand(00000000...9999999)
  credentials = LoginOnUI.new(account.to_s,pass.to_s )
  @email = @driver.find_element(:id, 'LoginForm_emailOrUsername').send_key(credentials.get_email)
  @password = @driver.find_element(:id, 'LoginForm_password').send_key(credentials.get_password)
  @driver.find_element(:name, 'yt0').submit

end

When(/^the customer tries to login without any credentials$/) do

  account = ''
  pass = ''
  credentials = LoginOnUI.new(account.to_s,pass.to_s )
  @email = @driver.find_element(:id, 'LoginForm_emailOrUsername').send_key(credentials.get_email)
  @password = @driver.find_element(:id, 'LoginForm_password').send_key(credentials.get_password)
  @driver.find_element(:name, 'yt0').submit

end