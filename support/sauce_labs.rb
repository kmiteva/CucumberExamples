module SauceLabs

  def sauce_labs(type)


    case type

      when 'firefox_win7'
        caps = Selenium::WebDriver::Remote::Capabilities.firefox
        caps.version = '17'
        caps.platform = 'Windows 2008'
        caps[:name] = "mySkrill Smoke: FIREFOX WIN7 - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

      when 'firefox_winxp'
        caps = Selenium::WebDriver::Remote::Capabilities.firefox
        caps['platform'] = 'Windows 2003'
        caps['version'] = '17'
        caps[:name] = "mySkrill Smoke: FIREFOX FOR WIN XP - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

      when 'firefox_mac'
        caps = Selenium::WebDriver::Remote::Capabilities.firefox
        caps['platform'] = 'Mac 10.6'
        caps['version'] = '17'
        caps[:name] = "mySkrill Smoke: FIREFOX FOR MAC OSX - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)


      when 'chrome_winxp'
        caps = Selenium::WebDriver::Remote::Capabilities.chrome
        caps.platform = 'Windows 2003'
        caps[:name] = "mySkrill Smoke: CHROME FOR WIN XP- #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

      when 'chrome_win7'
        caps = Selenium::WebDriver::Remote::Capabilities.chrome
        caps.platform = 'Windows 2008'
        caps[:name] = "mySkrill Smoke: CHROME FOR WIN7 - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

      when 'chrome_mac'
        caps = Selenium::WebDriver::Remote::Capabilities.chrome
        caps['platform'] = 'Mac 10.8'
        caps[:name] = "mySkrill Smoke: CHROME FOR MAC - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)


      when 'ie9_win7'
        caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
        caps.platform = 'Windows 2008'
        caps.version = '9'
        caps[:name] = "mySkrill Smoke: IE9 FOR WIN7 - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)


      when 'ie8_win7'
        caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
        caps.platform = 'Windows 2008'
        caps.version = '8'
        caps[:name] = "mySkrill Smoke: IE8 FOR WIN7 - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

      when 'ie9_winxp'
        caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
        caps.platform = 'Windows 2003'
        caps.version = '9'
        caps[:name] = "mySkrill Smoke: IE9 FOR WIN XP - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)


      when 'ie8_winxp'
        caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
        caps.platform = 'Windows 2003'
        caps.version = '8'
        caps[:name] = "mySkrill Smoke: IE8 FOR WIN XP - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

      when 'ie7_winxp'
        caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
        caps.platform = 'Windows 2003'
        caps.version = '7'
        caps[:name] = "mySkrill Smoke: IE7 FOR WIN XP - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)


      when 'safari'
        # /* Notice: We don't yet support HTTPS for this platform over Sauce Connect */
        caps = Selenium::WebDriver::Remote::Capabilities.safari
        caps.platform = 'Mac 10.8'
        caps.version = '6'
        caps[:name] = "mySkrill Smoke: SAFARI - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)


      when 'ipad'
        # /* Notice: We don't yet support HTTPS for this platform over Sauce Connect */
        caps = Selenium::WebDriver::Remote::Capabilities.ipad
        caps.platform = 'Mac 10.8'
        caps.version = '6'
        caps[:name] = "mySkrill Smoke: iOS 6.0 iPAD - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)


      when 'iphone'
        # /* Notice: We don't yet support HTTPS for this platform over Sauce Connect */
        caps = Selenium::WebDriver::Remote::Capabilities.iphone
        caps.platform = 'Mac 10.8'
        caps.version = '6'
        caps[:name] = "mySkrill Smoke: iOS 6.0 iPHONE - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

      when 'ie10_win8'
        caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
        caps['platform'] = 'Windows 2012'
        caps['version'] = '10'
        caps[:name] = "mySkrill Smoke: IE10 FOR WIN8 - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

      when 'opera_win7'
        caps = Selenium::WebDriver::Remote::Capabilities.opera
        caps['platform'] = 'Windows 2008'
        caps['version'] = '12'
        caps[:name] = "mySkrill Smoke: OPERA FOR WIN7 - #{Time.now.strftime '%Y-%m-%d %H:%M'}"
        @local_browser = Selenium::WebDriver.for(
            :remote,
            :url => "http://myaccount_ci:9bc00106-156c-4838-9865-2f92c46762ca@ondemand.saucelabs.com:80/wd/hub",
            :desired_capabilities => caps)

    end
  end
end

