require 'rspec'
require 'rubygems'
require 'watir'

include Selenium

#Creating Remote WebDriver
#browser = Watir::Browser.new(:remote, :url =&gt; "http://SauceUsername:SauceKey@ondemand.saucelabs.com:80/wd/hub",
    #:desired_capabilities =&gt; WebDriver::Remote::Capabilities.firefox)
#If you want to run it locally, use Watir::Browser.new :firefox
#

browser = Watir::Browser.new :chrome


Before do
  @browser = browser
  @browser.driver.manage.window.maximize
end