Then(/^I follow Patient Index$/) do
  @polaris.login_home_page.patient_index.click
  sleep 1
  #sub header verification
  expect(@polaris.login_home_page).to have_active_header
  expect(@polaris.login_home_page).to have_home_subheader
end

Then(/^I follow Add Patient$/) do
  @polaris.login_home_page.add_patient.click
  sleep 1
  # sub header verification
  expect(@polaris.login_home_page).to have_active_header
  expect(@polaris.login_home_page).to have_home_subheader
end

Then(/^I follow Clinic Mode$/) do
  @polaris.login_home_page.clinic_mode.click
  sleep 1
  expect(@polaris.login_home_page).to have_active_header
  # sub header verification
  expect(@polaris.login_home_page).to have_home_subheader
end

Then(/^I follow Intake$/) do
  @polaris.login_home_page.intake.click
  sleep 1
  # sub header verification
  expect(@polaris.login_home_page).to have_active_header
  expect(@polaris.login_home_page).to have_home_subheader
  expect(@polaris.login_home_page).to have_profile
  expect(@polaris.login_home_page).to have_consult
  expect(@polaris.login_home_page).to have_intake
  expect(@polaris.login_home_page).to have_treatment_navigator
  # sidebar verification
  expect(@polaris.login_home_page).to have_demographics
  expect(@polaris.login_home_page).to have_insurance
  expect(@polaris.login_home_page).to have_medical_history
end

Then(/^I follow Consult$/) do
  sleep 1
  @polaris.login_home_page.consult.click
  # sub header verification
  expect(@polaris.login_home_page).to have_active_header
  expect(@polaris.login_home_page).to have_home_subheader
  expect(@polaris.login_home_page).to have_profile
  expect(@polaris.login_home_page).to have_consult
  expect(@polaris.login_home_page).to have_intake
  expect(@polaris.login_home_page).to have_treatment_navigator
  # sidebar verification
  expect(@polaris.login_home_page).to have_basic_info
  expect(@polaris.login_home_page).to have_medical_history
  expect(@polaris.login_home_page).to have_partner
  expect(@polaris.login_home_page).to have_exams
  expect(@polaris.login_home_page).to have_assessment
  expect(@polaris.login_home_page).to have_version_history
end

Then(/^I follow Treatment Navigator$/) do
  @polaris.login_home_page.treatment_navigator.click
  sleep 1
  # sub header verification
  expect(@polaris.login_home_page).to have_active_header
  expect(@polaris.login_home_page).to have_home_subheader
  expect(@polaris.login_home_page).to have_profile
  expect(@polaris.login_home_page).to have_consult
  expect(@polaris.login_home_page).to have_intake
  expect(@polaris.login_home_page).to have_treatment_navigator
end

Then(/^I follow Profile$/) do
  @polaris.login_home_page.profile.click
  sleep 1
  # sub header verification
  expect(@polaris.login_home_page).to have_active_header
  expect(@polaris.login_home_page).to have_home_subheader
  expect(@polaris.login_home_page).to have_profile
  expect(@polaris.login_home_page).to have_consult
  expect(@polaris.login_home_page).to have_intake
  expect(@polaris.login_home_page).to have_treatment_navigator
  # sidebar verification
  expect(@polaris.login_home_page).to have_basic_info_profile
  expect(@polaris.login_home_page).to have_documents
end