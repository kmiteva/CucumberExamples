require 'selenium-webdriver'
require 'anticipate'
require 'include'
require 'page-object'


Given(/^The customer who is access some ws in (.*)/) do |language|
  @driver.navigate.to "http://www.cisha.de/index.php/"+language.to_str+"/"
end


When(/^The customer goes to (.*) tab/) do |link|
  sleep 1
  @driver.find_element(:class, "item-121").click if link == 'Our services'
  @driver.find_element(:class, "item-119").click if link =='Why cisha'
  @driver.find_element(:class, "item-122").click if link =='Contact'
  @driver.find_element(:class, "item-118").click if link =='Careers'
  @driver.find_element(:class, "item-117").click if link =='Home'

  @driver.find_element(:class, "item-112").click if link == 'Leistungen'
  @driver.find_element(:class, "item-113").click if link == 'Start'
  @driver.find_element(:class, "item-105").click if link == 'Karriere'
  @driver.find_element(:class, "item-114").click if link == 'Wieso cisha'
  @driver.find_element(:class, "item-106").click if link == 'Kontakt'


end
Then(/^(.*)should be displayed$/) do |text|
  sleep 2

  #@driver.page_source.should include  'Our servicessdsgfdgdghfdhdhfdhfdhfdh'if text != 'Our services'
  #@driver.page_source.should include  'Contacts' if text == 'Contacts'
  #@driver.page_source.should include  'Why should you work with us? For lots of reasons' if text == 'Why should you work with us? For lots of reasons...'
  # @driver.page_source.should include  'Contacting cisha' if text == 'Contacting cisha'
  #@driver.page_source.should include  'Careers at cisha' if text == "Careers at cisha"
  # @driver.page_source.should include  'Were developing the worlds most advanced and versatile chess platform' if text == 'Were developing the worlds most advanced and versatile chess platform'
  #@driver.page_source.should include  'Kontakt' if text == 'Kontakt'
  # @driver.page_source.should include  'Unsere Leistungen' if text == 'Unsere Leistungen'
  # @driver.page_source.should include  'Wir entwickeln die fortschrittlichste und vielseitigste Schachplattform der Welt.' if text == 'Wir entwickeln die fortschrittlichste und vielseitigste Schachplattform der Welt.'

  #our_srvices = @driver.find_element(:link_text, "Our services") if text == 'Our services'
  #contacts =  @driver.find_element(:link_text, "Contacts") if text == 'Contacts'
  #why_cisha =  @driver.find_element(:link_text, "Why should you work with us? For lots of reasons") if text == 'Why should you work with us? For lots of reasons...'
  #contacting =  @driver.find_element(:link_text, "Contacting cisha") if text == 'Contacting cisha'
  #careers =  @driver.find_element(:link_text, "Careers at cisha") if text == "Careers at cisha"
  #home =  @driver.find_element(:link_text, "Were developing the worlds most advanced and versatile chess platform") if text == 'Were developing the worlds most advanced and versatile chess platform'
  #
  #contacts_de =  @driver.find_element(:link_text, "Kontakt") if text == 'Kontakt'
  #our_services_de = @driver.find_element(:link_text, "Unsere Leistungen") if text == 'Unsere Leistungen'
  #why_cisha_de = @driver.find_element(:link_text, "Unsere Leistungen") if text == 'Unsere Leistungen'
  #contacting_de = @driver.find_element(:link_text, "Unsere Leistungen") if text == 'Unsere Leistungen'
  #careers_de = @driver.find_element(:link_text, "Unsere Leistungen") if text == 'Unsere Leistungen'
  #home_de =  @driver.find_element(:link_text, "Wir entwickeln die fortschrittlichste und vielseitigste Schachplattform der Welt.") if text == 'Wir entwickeln die fortschrittlichste und vielseitigste Schachplattform der Welt.'

  @driver.close
end


Given(/^the stable internet connection$/) do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.window.maximize
end

Then(/^The customer should be successfully redirected to (.*) page$/) do |link|
  sleep 1
  @driver.page_source.should include  'Our service' if link == 'Our services'
  @driver.page_source.should include  'Why should you work with us? For lots of reasons' if link == 'Why cisha'
  @driver.page_source.should include  'Contacting cisha' if link == 'Contact'
  @driver.page_source.should include  'Careers at cisha' if link == 'Careers'
  @driver.page_source.should include  'most advanced and versatile chess platform' if link == 'Home'
  @driver.page_source.should include  'Unsere Leistungen' if link == 'Leistungen'
  @driver.page_source.should include  'Wir entwickeln die fortschrittlichste und vielseitigste Schachplattform der Welt.' if link == 'Start'
  @driver.page_source.should include  'Karriere at cisha' if link == 'Karriere'
  @driver.page_source.should include  'Wieso du mit uns arbeiten willst?' if link == 'Wieso cisha '
  @driver.page_source.should include  'Kontakt zu cisha' if link == 'Kontakt'

  @driver.close


end