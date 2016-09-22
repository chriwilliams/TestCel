@feature_file

Feature: I want to create a patient through clinic mode in the Polaris Application
  Background: Start of by visiting Polaris's official home page, and logging in.

  @Polaris
  @CX152997-09
  Scenario: Add a patient to the Polaris app through clinic mode.
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I follow Clinic Mode
    And I wait for "1" seconds
    And I select office location "Westside"
    And I fill in the patient information form with the following:
      | first name            | Faral              |
      | last name             | Lauren             |
      | clinic_mode_email     | testf@gmail.com    |
      | date of birth         | 01201984           |
      | ref physician         | Dr.Juelz           |
      | gender                | Female             |
      | clinic_mode_physician | Jeffrey Klein      |
    And I follow next
    And I wait for "2" seconds
    And I create a patient with password "Tester231" and confirm with password "Tester231", and accept terms and conditions
    And I wait for "5" seconds
    And I accept the terms and conditions
    Then I logout

  @Polaris
  @CX152997-10
  Scenario: Delete a patient from the Polaris application that was created from clinic mode.
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I search for patient "Faral Lauren" with a date of birth of "01201984"
    Then I delete the patient
    Then I verify patient "Faral Lauren" with a birth date of "01201984" is removed
    Then I logout