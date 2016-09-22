And(/^I update the outstanding paperwork with action items "([^"]*)"$/) do |items|
  @polaris.appointment.outstanding_paperwork(items)
end