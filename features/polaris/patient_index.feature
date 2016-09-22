@feature_file
Feature: I want to be able to use the patient index page.
  Within the patient index page I want to be able to search for a specified subject by certain filters,
  and then use the batch actions for the available patients.

  Background: Start of by visiting Polaris's official home page, and logging in.

    # logging in as a physician
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    Then Polaris icon is displayed

  @Polaris
  @CX152997-05
  Scenario: I want to use the search filters on patient index then use batch actions to download documents.
    Given I follow Patient Index
    And I wait for "3" seconds
    And I fill in the patient index search parameters with the following:
      | physician                 | J. Knopman               |
      | office location           | Westside                 |
      | intake submission status  | Not submitted            |
      | visibility status         | Active                   |
      | appointment               | Custom range             |
      | start date                | 05132016                 |
      | end date                  | 09132016                 |
    #| Outstanding Action Items |                          |
#    And In Polaris I verify the following data on the "Polaris" for the patient index page:
#      | Field Name   | Value      |
#      | Last emailed | 08/09/2016 |

    And I take a screenshot
    And I select batch actions and choose to export documents "Consents", and choose export type "Export all patient Documents into a single PDF"
    And I wait for "5" seconds
    Then I verify batch action success message
    #Then I logout

  #REVISIT
#  @Polaris
#  @CX152997-08
#  Scenario: I want search for a specific user on the patient index page.
#    Given I follow Patient Index
#    When I search for user "sima ahuja"
#    And I select the setting "Edit Partner"
#    #And I refresh browser
#   And I verify I receive the reminder success message





