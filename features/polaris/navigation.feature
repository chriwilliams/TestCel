@feature_file
Feature: I want to be able to navigate through the Polaris pages.
  As I am navigating through the pages I want to verify that the pages are being displayed correctly

  Background: Start of by visiting Polaris's official home page, and logging in.

    # logging in as a physician
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    Then Polaris icon is displayed

  @Polaris
  @CX152997-01
  Scenario: Navigating through tabs within Polaris from a physicians perspective.
      # Patient Index Page
    Then I follow Patient Index
      #And I debug
    Then I take a screenshot
      # Add Patient Page
    Then I follow Add Patient
    Then I take a screenshot
      # Clinic Mode Page
    Then I follow Clinic Mode
    And I close the Clinic Mode modal
    Then I logout

  @Polaris
  @CX152997-02
  Scenario: Navigate through different tabs within Polaris from a physicians perspective of the patients information.
    Given I search for patient "Geeta Arora" with a date of birth of "01081977"
      # Intake Page
    Then I follow Intake
      # Consult Page
    Then I follow Consult
      # Treatment Navigator
    #Then I follow Treatment Navigator
    Then I follow Profile
    And I wait for "3" seconds
     # Then I logout

  @Polaris
  @CX152997-02a
  Scenario: Navigate through different tabs within Polaris from a patients perspective
    Given I visit Polaris's home page
    When I login to Polaris with email "tp@gmail.com" and  password "testuser1"
    Then Polaris icon is displayed