And(/^I fill in the patient index search parameters with the following:$/) do  |options_table|
  @polaris.patient_index.patient_index(options_table)
end

And(/^I select batch actions and choose to export documents "([^"]*)", and choose export type "([^"]*)"$/) do |doc_name, export_type|
  sleep 2
  @polaris.patient_index.toggle_all.click
  sleep 2
  @polaris.patient_index.batch_actions.click
  sleep 1
  @polaris.patient_index.select_batch_actions(doc_name, export_type)
  @polaris.patient_index.submit.click
  sleep 1
end

And(/^I search for user "([^"]*)"$/) do |patient_name|
  @polaris.patient_index.patient_index_search.set(patient_name)
  sleep 2
end

And(/^I select the setting "([^"]*)"$/) do |settings_type|
@polaris.patient_index.settings_selection(settings_type)
sleep 2
#@polaris.patient_index.edit_patient_text.click
end


And(/^In Polaris I verify the following data on the "([^"]*)" for the patient index page:$/) do |arg, table|
  # table is a table.hashes.keys # => [:Field Name, :Value]
  table.hashes.each do | data |
    label = data['Field Name']
    value = data['Value']
    field_value = @polaris.patient_index.get_field_value(label)
    expect(field_value).to eq(value)
    step %Q{I Print content "VERIFIED: Value: '#{value}' is available for the field: '#{label}'" to shamus output}
  end
end
