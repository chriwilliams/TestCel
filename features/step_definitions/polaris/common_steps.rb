# Common user interface steps

Given(/^I visit Polaris's home page$/) do
  @polaris.login_home_page.load
  expect(@polaris.login_home_page).to be_displayed
end

Then /^I take a screenshot$/ do
  page.save_screenshot('C:\\Documents\\file.png')
end

And(/^I wait for "([0-9]+)" seconds$/) do |wait_time|
  sleep (wait_time.to_i)
end

And(/^I close the browser$/) do
  Capybara.current_session.driver.quit
end

And /^I scroll (up|down) the page(?: by (\d+) (?:px|pixels))?$/ do |direction, pixel|
  $applications.current_app.current_page.scroll_on_page({up: true, down: false}[direction.to_sym], pixel)
end

#revisit
And(/^I debug$/) do
  page.driver.debug
end

And(/^I refresh browser$/) do
  page.driver.browser.navigate.refresh
  page.driver.browser.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertPresentError
end