@feature_file

Feature: I want to be able to add a patient and a partner in Polaris as a a physician role.
  Background: Start of by visiting Polaris's official home page, and logging in.

  @Polaris
  @CX152997-03
  Scenario: Add a patient and partner to the Polaris application.
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I follow Add Patient
    And I wait for "2" seconds
    And I fill in the patient information form with the following:
      | first name          | Laura              |
      | last name           | Logen              |
      | email               | llo@gmail.com      |
      | date of birth       | 01201988           |
      | ref physician       | Dr.Juelz           |
      | gender              | Male               |
      | physician           | Jeffrey Klein      |
      | office location     | White Plains       |
    And I wait for "2" seconds
    And I create a patient partner with the following:
      | first name          | James              |
      | last name           | Logan              |
      | gender              | Male               |
      | email               | lesner23@gmail.com |
      | date of birth       | 01201988           |
      #| partner info        | By clinic         |
    Then I logout

  @Polaris
  @CX152997-04
  Scenario: Delete a patient from the Polaris application.
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I search for patient "Laura Logen" with a date of birth of "01201988"
    When I delete the patient
    Then I verify patient "Jennifer Logen" with a birth date of "01201988" is removed
    Then I logout

  @Polaris
  @CX152997-05a
  Scenario: Add a partner additionally to a patient that has already been created in the past.
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I wait for "2" seconds
    And I search for patient "Geeta Arora" with a date of birth of "01081977"
    And I add an additional partner with the credentials:
      | first name          | Jerome               |
      | last name           | Logan                |
      | gender              | Male                 |
      | email               | lefsfer23@gmail.com  |
      | date of birth       | 01201988             |
      #| partner info       | By clinic            |
    And I wait for "1" seconds
    And I verify the patient partner create success message
    Then I logout

  @Polaris
  @CX152997-05b
  Scenario: Remove a patient partner from the Polaris application.
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I wait for "2" seconds
    And I search for patient "Jerome Logan" with a date of birth of "01201988"
    Then I delete the patients partner
    And I wait for "2" seconds
    Then I verify patient "Jerome Logan" with a birth date of "01201988" is removed
    Then I logout