@feature_file

Feature: I want to be able to update a patients information in the appointments tab.
  Background: Start of by visiting Polaris's official home page, and logging in.

  @Polaris
  @CX152997-11
  Scenario: Updating the outstanding paperwork(action items)
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I update the outstanding paperwork with action items "Patient Intake"
    And I verify the action item success message
    #Then I logout