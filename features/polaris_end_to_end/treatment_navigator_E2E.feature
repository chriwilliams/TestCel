@feature_file
Feature: I want to be able to create a user(patient), and fill in additional information for the patient on the treatment navigator form
  from a front desk users point of view that may have been missed or skipped on intake form.
  I then want to remove the user from Polaris for resetting purposes.

  Background: Start of by visiting Polaris's official home page, and logging in.

      # logging in as a front desk user
    Given I visit Polaris's home page
    When I login to Polaris with email "phldoc@example.com" and  password "pivotal1"
    Then Polaris icon is displayed

  @Polaris
  @E2E
  @CX152997-14
  Scenario: I want to create a user on Polaris and fill out the intake form as a front desk user.
#    And I follow Add Patient
#    And I wait for "1" seconds
#    And I fill in the patient information form with the following:
#      | first name          | Kim                |
#      | last name           | Lens               |
#      | email               | krog@gmail.com     |
#      | date of birth       | 01101985           |
#      | ref physician       | Dr.Juelz           |
#      | gender              | Female             |
#      | physician           | Caleb Kallen       |
#      | office location     | Langhorne          |
#    And I follow submit
#    And I follow yes continue
    Given I search for patient "Kim Lens" with a date of birth of "01101985"
    When I follow Treatment Navigator
#    And I fill in the required information with:
#      | height                 |5   |
#      | weight                 |141 |
#      | bmi                    |25  |
#      | gravidity              |9  |
#      | parity                 |10  |
#      | time trying to conceive| 14 |
#      | miscarriage            | 1  |
#      | ectopic pregnancies    | 2  |
#      | abortion               | 2  |

    And I click diagnostic

    And I wait for "2" seconds
And I fill in diagnosis metrics with:
    | day 3 FSH  | 5  |
    | day 3 E2   | 3  |
    | day 3 LH   | 7  |
    | amh        | 4  |
    | bafc       | 2  |

