require 'selenium-webdriver'
require 'anticipate'
require 'include'
require 'page-object'
require 'rspec/expectations'

class URLSite

  def initialize(driver, http)
    @driver = driver
    @http = http

  end

  def get_driver
    return @driver
  end

  def get_http
    return @http
  end


end