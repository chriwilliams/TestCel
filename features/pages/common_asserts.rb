module CommonAsserts

  #expect something to be displayed.

  #Polaris home page
  def assert_polaris_home_page_loaded
    expect(@polaris.login_home_page).to be_displayed
  end

  #Polaris home page logo
  def assert_polaris_home_page_image_displayed
    expect(@polaris.login_home_page).to have_css("img[src*='/assets/logo-f2a10a8d09ac18e1eca63c452aea751e2a913747f9cc7bad155723f5616e1852.svg']")
  end

  # No record message when verifying a deleted user
  def assert_no_records_match
    sleep 2
    expect(@polaris.login_home_page.text).to include("No matching records found")
  end

  # Verify that the batch action download is successfull
  def assert_batch_actions_success_message
    expect(@polaris.login_home_page.text).to include("Batch Actions Success! Your batch export has completed successfully. Download your PDF below.")
  end

  # Verify the patient partner is updated successfully
  def assert_patient_partner_success_message
    expect(@polaris.login_home_page.text).to include("Success! Partner created successfully")
  end


  # def assert_consult_landing_page
  #   expect(@polaris.login_home_page.text).to have_css('a[class$="item active"]')
  # end

  # Verify the action items are updated successfully
  def assert_action_item_update_message
    expect(@polaris.login_home_page.text).to include("Success! Settings updated")
  end

# patient index
  def assert_patient_send_reminder_message
    expect(@polaris.login_home_page.text).to include("Success! Email reminder sent to ")
  end

 # consult approved read only
  def assert_consult_read_only_message
    expect(@polaris.login_home_page.text).to include("This approved form is in read-only mode")
  end
end

World(CommonAsserts)