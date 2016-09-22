And(/^I fill in the required information with:$/) do |table|
  @polaris.treatment_navigator.required(table)
end

And(/^I click diagnostic$/) do
  @polaris.treatment_navigator.diagnostic.click
  sleep 1
  @polaris.treatment_navigator.alerts
  expect(@polaris.login_home_page).to have_active_header

end

And(/^I fill in diagnosis metrics with:$/) do |table|
  @polaris.treatment_navigator.diagnostic_metrics(table)
end