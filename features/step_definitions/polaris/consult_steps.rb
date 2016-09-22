And(/^I select next$/) do
  @polaris.consult.next_button.click
end

And(/^I add in contraceptive information with the following:$/) do |table|
  @polaris.consult.add_contraceptive(table)
end

And(/^I add in pregnancy information with the following:$/) do |table|
  @polaris.consult.add_pregnancy(table)
end

And(/^I fill in the chief complaint details with "([^"]*)"$/) do |cc|
  @polaris.consult.chief_complaint.set(cc)
end

And(/^I fill in the HPI details with "([^"]*)"$/) do |hpi|
  @polaris.consult.hpi.set(hpi)
end

And(/^I add blood test with "([^"]*)" with note "([^"]*)"$/) do |adt, note|
  @polaris.consult.add_blood_tests(adt, note)
end

And(/^I fill in non ivf history with the following:$/) do |table|
  @polaris.consult.non_ivf_history(table)
end

And(/^I fill in the past medical information with the following:$/) do |table2|
  @polaris.consult.past_medical_button.click
  sleep 2
  @polaris.consult.past_medical(table2)
end

And(/^I fill in the surgical history information with the following:$/) do |table|
  @polaris.consult.add_surgical_button.click
  @polaris.consult.surgical_history(table)
end

And(/^I fill in the medication information with the following:$/) do |table|
  @polaris.consult.medication(table)
end

And(/^I add "([^"]*)" for medication allergies with note "([^"]*)"$/) do |ma,ms|
  @polaris.consult.medication_allergies_add_button.click
  sleep 3
  @polaris.consult.medication_allergy(ma,ms)
end


# And(/^I fill out the gynecological history with:$/) do
#   @polaris.consult.
# end

And(/^I add a medication note with the following "([^"]*)"$/) do |mn|
  @polaris.consult.medication_notes.set mn
end

And (/^I add a family note with the following "([^"]*)"$/) do |mn|
  @polaris.consult.family_notes.set mn
  sleep 2
end

And (/^I add a social note with the following "([^"]*)"$/) do |sn|
  @polaris.consult.social_notes.set sn
  sleep 2
end

And(/^I select all normal for the ROS questions$/) do
  @polaris.consult.ros_cb.click
end

And(/^I add a ROS message with the following "([^"]*)"$/) do |rn|
  @polaris.consult.ros_notes.set rn
end

And(/^I select that the medical history was reviewed with the patient$/) do
  @polaris.consult.medical_history_cb.click
end

And(/^I select next on medical history page$/) do
  @polaris.consult.medical_history_submit_button.click
end

And(/^I checked vitals recorded elsewhere$/) do
  @polaris.consult.vitals_cb.click
end

And(/^I fill in the blood pressure with systolic "([^"]*)", and diastolic info with "([^"]*)"$/) do |bps, bpd|
  @polaris.consult.blood_pressure_systolic.set bps
  @polaris.consult.blood_pressure_diastolic.set bpd
end

And(/^I select the physical all normal checkbox$/) do
  @polaris.consult.all_normal_cb.click
end

And(/^I select the physical deferred checkbox$/) do
  @polaris.consult.deferred_cb.click
end

And(/^I add a physical message with the following "([^"]*)"$/) do |pn|
  @polaris.consult.physical_notes.set pn
end

And(/^I select the pelvic all normal checkbox$/) do
  @polaris.consult.pelvic_all_normal.click
end

And(/^I select the pelvic defered checkbox$/) do
  @polaris.consult.pelvic_deferred.click
end

And(/^I add a pelvic message with the following "([^"]*)"$/) do |pn|
  @polaris.consult.pelvic_notes. set pn
end

And(/^I select transvaginal for the ultrasound type$/) do
  @polaris.consult.transvagina.click
end

And(/^I select transabdominal for the ultrasound type$/) do
  @polaris.consult.transabdominal.click
end

And(/^I select the ultrasound all normal checkbox$/) do
  @polaris.consult.ultrasound_all_number.click
end

And(/^I select the deferred checkbox$/) do
  @polaris.consult.ultrasound_deferred.click
end

And(/^I add in "([^"]*)" for the right bafc$/) do |rb|
  @polaris.consult.right_bafc.set rb
end

And(/^I add in "([^"]*)" for the left bafc$/) do |lb|
  @polaris.consult.left_bafc.set lb
end

And(/^I add a ultrasound message with the following "([^"]*)"$/) do |ua|
  @polaris.consult.ultrasound_notes.set ua
end

And(/^I select next from the exams page$/) do
  @polaris.consult.exams_next.click
end

And(/^I fill in the assessment notes with the following "([^"]*)"$/) do |at|
  @polaris.consult.assessment_text.set at
end

And(/^I in the plan notes with the following "([^"]*)"$/) do |pt|
  @polaris.consult.plan_text.set pt
end

And(/^I select "([^"]*)" for the old medical records$/) do |omd|
  @polaris.consult.old_medical_records(omd)
end

And(/^I select "([^"]*)" for the counseled options$/) do |co|
  @polaris.consult.counseled_options(co)
end

And(/^I fill in "([^"]*)" for the time spent face to face in minutes$/) do |tsip|
  @polaris.consult.time_spent_in_minutes(tsip)
end

And(/^I select see dictation$/) do
  @polaris.consult.see_dictation.click
end



And(/^I select submit with signature "([^"]*)"$/) do |rp|
  @polaris.consult.submit.click
  @polaris.consult.reviewing_physician.set rp
  @polaris.consult.modal_submit.click
end

And(/^I fill out the gynecological history with:$/) do |table|
  @polaris.consult.gynecological_history(table)
end

And(/^I fill out the fertility history with:$/) do |table|
  @polaris.consult.fertility(table)
end

And(/^I select "([^"]*)" for x\-ray or anti\-cancer drugs with text "([^"]*)"$/) do |xy, xt|
  @polaris.consult.x_ray(xy,xt)
end

And(/^I fill in the family information with the following:$/) do |table |
  @polaris.consult.family(table)
end

And(/^I fill in the social information with the following:$/) do |table|
  @polaris.consult.social(table)
end

And(/^I fill in vital information with the following:$/) do |table|
  @polaris.consult.vital_data(table)
end