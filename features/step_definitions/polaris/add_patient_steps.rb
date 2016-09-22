And(/^I fill in the patient information form with the following:$/) do |options_table|
  @polaris.add_patient.create_patient_table(options_table)
end

And(/^I create a patient partner with the following:$/) do |options_table2|
  @polaris.add_patient.continue_to_add_partner.click
  sleep 2
  @polaris.add_patient.yes_continue_button.click

  @polaris.add_patient.create_patient_table(options_table2)
  sleep 2
  @polaris.add_patient.add_partner_button.click
end

#user has to be on the patient profile page
And(/^I delete the patient$/) do
  @polaris.add_patient.edit_button.click
  @polaris.add_patient.delete_patient.click
  @polaris.add_patient.delete_confirm_button.click
end

And(/^I add an additional partner with the credentials:$/) do |options_table2|
  @polaris.add_patient.add_partner_button_standalone.click
  @polaris.add_patient.create_patient_table(options_table2)
  @polaris.add_patient.add_partner_button.click
end

Then(/^I delete the patients partner$/) do
  @polaris.add_patient.edit_partner_button.click
  @polaris.add_patient.delete_patient.click
  @polaris.add_patient.delete_confirm_button.click
end

And(/^I follow submit$/) do
  @polaris.add_patient.submit.click
end

And(/^I follow yes continue/) do
  @polaris.add_patient.yes_continue_button.click
end
