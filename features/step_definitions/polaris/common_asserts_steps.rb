Then(/Polaris icon is displayed$/) do
  assert_polaris_home_page_image_displayed
end

Then(/I verify patient "([^"]*)" with a birth date of "([^"]*)" is removed$/) do  |dob,name|
  @polaris.login_home_page.search_patient(dob,name)
  assert_no_records_match
end

Then(/^I verify batch action success message$/) do
  assert_batch_actions_success_message
end

And(/^I verify the patient partner create success message$/) do
  assert_patient_partner_success_message
end

And(/^I verify I receive the reminder success message/) do
  assert_patient_send_reminder_message
end

And(/^I verify the action item success message/) do
  assert_action_item_update_message
end


And(/^I verify the read only consult message$/) do
  assert_consult_read_only_message
end