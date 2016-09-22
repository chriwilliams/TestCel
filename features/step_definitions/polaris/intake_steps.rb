And(/^I add ssn "([^"]*)" with a preffered name "([^"]*)", occupation is "([^"]*)" with employer name "([^"]*)" and marital status "([^"]*)" for "([^"]*)" years$/) do |ssn_par, pref_name_par, occupation_par, employer_par, status_par, years_par|
 sleep 2
 @polaris.intake.ss_number.set(ssn_par)
 @polaris.intake.preferred_name.set(pref_name_par)
 @polaris.intake.occupation.set(occupation_par)
 @polaris.intake.employer.set(employer_par)
 @polaris.intake.mar_status(status_par)
 @polaris.intake.mar_years.set(years_par)
end

And(/^I add country "([^"]*)", with a street address of "([^"]*)" apt "([^"]*)", belonging to city "([^"]*)", and state "([^"]*)", within zipcode "([^"]*)"$/) do |country, street, apt_par, city_par,states, zip_code_par|
 sleep 2
 @polaris.intake.country_selects(country)
 @polaris.intake.street_address.set(street)
 @polaris.intake.apt.set(apt_par)
 @polaris.intake.address_city.set(city_par)
 @polaris.intake.state_select(states)
 @polaris.intake.address_zip_code.set(zip_code_par)
end

And(/^I update the phone information:$/) do |table|
 @polaris.intake.phone_information(table)
end

And(/^I update personal information:$/) do |table|
 @polaris.intake.personal_info(table)
end

And(/^Patient is interested in clinic because of "([^"]*)"$/) do |test|
 @polaris.intake.reasoning(test)
end

And(/^Patient would like to have "([^"]*)" amount of children$/) do |test2|
 @polaris.intake.children(test2)
end

And(/^I navigate to page "([^"]*)" on the intake form$/) do |number|
 @polaris.intake.page_nav(number)
end

And(/^I click next$/) do
 @polaris.intake.next.click
end

And(/^I add an additional comment "([^"]*)"$/) do |comment|
 @polaris.intake.additional_info.set(comment)
end

And(/^I fill in the health information with the following:$/) do |table|
 @polaris.intake.insurance(table)
end

And(/^I choose "([^"]*)" to let it be known if the user has insurance or not$/) do |test|
 @polaris.intake.patient_insurance(test)
end

And(/^I add a secondary insurance$/) do
 @polaris.intake.add_secondary.click
end

And(/^I add employer information:$/) do |table|
 @polaris.intake.employer_information(table)
end

And(/^I fill in the secondary health information with the following:$/) do |table|
 @polaris.intake.secondary_insurance(table)
end

And(/^I fill out the gynecological history with the following:$/) do |table|
 @polaris.intake.gynecological_history(table)
end

And(/^I put "([^"]*)" for has patient been pregnant$/) do |pregnant|
 @polaris.intake.is_patient_pregnant(pregnant)
end

And(/^I fill in the info for pregnancy one:$/) do |table|
 @polaris.intake.pregnancy_one(table)
end

And(/^I put "([^"]*)" for has patient used contraception$/) do |used_c|
 @polaris.intake.has_patient_used_contraception(used_c)
end

And(/^I select "([^"]*)" for the patient history$/) do |test|
 @polaris.intake.patient_history(test)
end

And(/^I select date of "([^"]*)" for patient mammogram$/) do |test|
 @polaris.intake.mammogram_date.click
 @polaris.intake.mammogram_date.set(test)
end

And(/^I select date of "([^"]*)" for patient pap smear$/) do |test|
 @polaris.intake.pap_smear_date.click
 @polaris.intake.pap_smear_date.set(test)
end

And(/^I fill in "([^"]*)" for abnormal pap smear results$/) do |pap|
 @polaris.intake.abnormal_pap_results(pap)
 sleep 3
end

And(/^I fill in last mammogram results with "([^"]*)"$/) do |test|
 @polaris.intake.last_mammogram_result.set (test)
end

And(/^I fill in if patient has had the following with "([^"]*)"$/) do |test|
 @polaris.intake.patient_have_following(test)
end

And(/^I fill in if patient experienced pain during intercourse with "([^"]*)"$/) do |test|
 @polaris.intake.pain_during_intercourse(test)
end

And(/^I fill in if the patient has undergone infertility testing in the past with "([^"]*)"$/) do |tor|
 @polaris.intake.undergone_testing_in_past(tor)
end

And(/^I fill in patients blood test history type with "([^"]*)"$/) do |btp|
 @polaris.intake.blood_test_patient(btp)
end

And(/^I fill in the information for the patients blood test with the following:$/) do |table|
 @polaris.intake.patient_blood_detail(table)
end

And(/^I fill in fertility tests patient has undergone with "([^"]*)"$/) do |test|
 @polaris.intake.fertility_tests_undergone(test)
end

And(/^I fill in if patient has undergone fertilty therapy with "([^"]*)"$/) do |fth|
 @polaris.intake.fertility_therapy_history(fth)
end

And(/^I fill in the infertility testing information with:$/) do |table|
 @polaris.intake.infertility_test_date(table)
end

And(/^I check "([^"]*)" for the patients previous medical history$/) do |mh|
 @polaris.intake.medical_history(mh)
end

And(/^I fill in if the patient has had any surgeries with "([^"]*)"$/) do |ps|
 @polaris.intake.patient_surgery(ps)
end

And(/^I fill out if the patient has had a tubal ligation with "([^"]*)"$/) do |tl|
 @polaris.intake.tubal_ligation(tl)
end

And(/^I fill out tubal ligation details with "([^"]*)"$/) do |tld|
 @polaris.intake.tubal_ligation_details.set(tld)
end

And(/^I fill in if patient has had a history of therapeutic x\-ray treatment or anti\-cancer drugs with "([^"]*)"$/) do |tt|
 @polaris.intake.therapeutic_treatment(tt)
end

And(/^I fill out if the patient is taking prescriptions with "([^"]*)"$/) do |p|
 @polaris.intake.prescriptions(p)
end

And(/^I fill in the text details for x\-ray treatment with "([^"]*)"$/) do |var|
 @polaris.intake.medication_details.set var
end

And(/^I fill out that the patient is allergic to "([^"]*)"$/) do |pam|
 @polaris.intake.patient_allergies_medication(pam)
end

And(/^I fill out a possible condition that a patients family can have with "([^"]*)"$/) do |fc|
 @polaris.intake.family_conditions(fc)
end

And(/^I fill out mothers age of menopause with "([^"]*)"$/) do |mam|
 @polaris.intake.mothers_age_menopause.set(mam)
end

And(/^I navigate to family page$/) do
 @polaris.intake.medical_history_tab.click
 @polaris.intake.family_tab.click
end

And(/^I fill out patients blood relatives with "([^"]*)"$/) do |br|
 @polaris.intake.blood_relatives(br)
end

And(/^I fill out if the patient has had genetic screening with "([^"]*)"$/) do |gs|
 @polaris.intake.genetic_screening(gs)
end

And(/^I fill in genetic screening details with "([^"]*)"$/) do |gs|
 @polaris.intake.genetic_screening_details.set(gs)
end


And(/^I check "([^"]*)" for item that patient has previously used$/) do |shp|
 @polaris.intake.social_history_past_meth(shp)
end

And(/^I check "([^"]*)" for patient exposure$/) do |pe|
 @polaris.intake.patient_exposure(pe)
end

And(/^I fill in the dietary restrictions with "([^"]*)"$/) do |dr_par|
 @polaris.intake.dietary_restriction(dr_par)
end

And(/^I fill in the patient exercises "([^"]*)" times per week$/) do |pe|
 @polaris.intake.patient_exercise.set(pe)
end

And(/^I fill in dietary restriction details with "([^"]*)"$/) do |dr|
 @polaris.intake.dietary_restrictions_text.set(dr)
end

And(/^I fill in patient treatment option text field with "([^"]*)"$/) do |to|
 @polaris.intake.treatment_options_text.set(to)
end

And(/^I fill in additional information with "([^"]*)"$/) do |at|
 @polaris.intake.additional_text.set(at)
end

And(/^I fill out contraception history question with:$/) do |table|
 @polaris.intake.contraception_table(table)
end

And(/^I add a second pregnancy with the credentials:$/) do |table|
 @polaris.intake.add_second_pregnancy(table)
end

And(/^I add a second contraceptive with the following info:$/) do |table|
 @polaris.intake.add_second_pregnancy(table)
end