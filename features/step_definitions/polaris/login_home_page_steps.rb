# logging into the Polaris home page.
Given(/^I login to Polaris with email "([^\"]*)" and  password "([^\"]*)"$/) do |email,password|
  @polaris.login_home_page.login_polaris(email,password)
  expect(@polaris.login_home_page).to have_active_header
end

# forget password
When(/^I forget my password$/) do
  @polaris.login_home_page.forgot_pwd
end

# searching for patient on homepage
Given(/^I search for patient "([^\"]*)" with a date of birth of "([^\"]*)"$/) do |dob,name|
  @polaris.login_home_page.search_patient(dob,name)
end

And(/^I logout$/) do
  @polaris.login_home_page.logout_polaris
end