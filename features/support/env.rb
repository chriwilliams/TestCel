$: << "."
support_dir = File.join(File.dirname(__FILE__))
$LOAD_PATH.unshift File.expand_path(support_dir)

require "capybara"
require "capybara/cucumber"
require "cucumber"
require "rspec"
require "selenium-webdriver"
require "site_prism"
require "capybara/poltergeist"
require "rspec/expectations"

########Temporarily commented out ##########
require "capybara-screenshot/cucumber"


Capybara.javascript_driver = :poltergeist

Capybara.app_host = "https://staging.polaris-platform.com/session/new"
Capybara.run_server = true
Capybara.default_wait_time = 5

if ENV['chrome']
  Before ('@feature_file') do
    page.driver.browser.manage.window.maximize
    sleep 1
    page.driver.browser.manage.window.resize_to(1400,1000)
  end
  Capybara.default_driver = :chrome
  Capybara.register_driver :chrome do |app|
    options = {
        :js_errors => false,
        :timeout => 360,
        :debug => false,
        :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

elsif ENV['firefox']
  Before ('@feature_file') do
    page.driver.browser.manage.window.maximize
    sleep 1
    page.driver.browser.manage.window.resize_to(1400,1000)
  end
  Capybara.default_driver = :firefox
  Capybara.register_driver :firefox do |app|
    options = {
        :js_errors => true,
        :timeout => 100,
        :debug => false,
        :inspector => false,
    }
  Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end

elsif ENV['safari']
  Before ('@feature_file') do
    page.driver.browser.manage.window.maximize
    sleep 1
    page.driver.browser.manage.window.resize_to(1400,1000)
  end
  Capybara.default_driver = :safari
  Capybara.register_driver :safari do |app|
    options = {
        :js_errors => false,
        :timeout => 360,
        :debug => false,
        :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :safari)
  end

elsif ENV['opera']
  Before ('@feature_file') do
    page.driver.browser.manage.window.maximize
    sleep 1
    page.driver.browser.manage.window.resize_to(1350,900)
  end
  Capybara.default_driver = :opera
  Capybara.register_driver :opera do |app|
    options = {
        :js_errors => false,
        :timeout => 360,
        :debug => false,
        :inspector => false,
    }
    Capybara::Selenium::Driver.new(app, :browser => :opera)
  end

elsif ENV['headless']
  Before { |feature_file| page.driver.resize(1600, 1200) }
  Capybara.default_driver = :poltergeist
  Capybara.register_driver :poltergeist do |app|
    options = {
        :js_errors => false,
        :timeout => 360,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => false,
    }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end
