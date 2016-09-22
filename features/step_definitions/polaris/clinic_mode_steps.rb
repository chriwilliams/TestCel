And(/^I select office location "([^"]*)"$/) do |clinics|
  @polaris.clinic_mode.clinic_mode_setup(clinics)
  @polaris.clinic_mode.next_button.click
end

And(/^I follow next$/) do
  @polaris.clinic_mode.next_button.click
end

And(/^I create a patient with password "([^"]*)" and confirm with password "([^"]*)", and accept terms and conditions$/) do |password, password_confirm|
  @polaris.clinic_mode.password_create.set(password)
  @polaris.clinic_mode.password_confirmation.set(password_confirm)
  sleep 2
end

And(/^I accept the terms and conditions$/) do
  @polaris.clinic_mode.terms_conditions_content.click
  @polaris.clinic_mode.terms_conditions_checkbox.click
  @polaris.clinic_mode.create_account_button.click
end

And(/^I close the Clinic Mode modal$/) do
  @polaris.clinic_mode.close_modal_button.click
end