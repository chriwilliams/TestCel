@feature_file
Feature: I want to be able to create a user(patient), and fill in the treatment navigator form
  from a front desk users point of view. I then want to remove the user from Polaris
  for resetting purposes when running the script multiple times.
  This is an end to end workflow.

  Background: Start of by visiting Polaris's official home page, and logging in.

      # logging in as a front desk user
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    Then Polaris icon is displayed

  @Polaris
  @E2E
  @CX152997-12
  Scenario: I want to create a user on Polaris and fill out the intake form as a front desk user.
    And I follow Add Patient
    And I wait for "1" seconds
    And I fill in the patient information form with the following:
      | first name          | Jayna              |
      | last name           | Logen              |
      | email               | jklo@gmail.com     |
      | date of birth       | 01201988           |
      | ref physician       | Dr.Juelz           |
      | gender              | Female             |
      | physician           | Jeffrey Klein      |
      | office location     | White Plains       |
    And I follow submit
    And I follow yes continue
    Given I search for patient "Jayna Logen" with a date of birth of "01201988"
    When I follow Intake
    #And I navigate to family page

    And I wait for "1" seconds
    # Page 1
    # demographic tab
    # General Information
    And I add ssn "1234356789" with a preffered name "Tess", occupation is "lawyer" with employer name "Celtrax" and marital status "Married" for "3" years
    And I add country "Afghanistan", with a street address of "2 tent lane" apt "1", belonging to city "Brooklyn", and state "NY", within zipcode "11312"
    And I click next
    # Page 2
    # demographic tab
    And I update the phone information:
      | primary phone              | 5164563456 |
      | primary phone type         | Home       |
      | secondary phone            | 4323452456 |
      | current gynecologist       | dr.Missy   |
      | current gynecologist phone | 7564357284 |
      | primary care name          | mr.t       |
      | primary care phone         | 5678974532 |
      | pharmacy name              | Celmatix   |
      | pharmacy phone             | 4759867474 |
      | emergency contact name     | Jenny Craig|
      | emergency contact phone    | 911        |
      | relationships              | My mom     |
    #And I navigate to page "3" on the intake form
    And I click next

    # Page 3
    # demographic tab
    # Personal Information
    And I update personal information:
      | height            | 6     |
      | weight            | 134   |
      | inches            | 2     |
      | ethnicity         | Asian |
    And I click next
    # Page 4
    # demographic tab
    And Patient is interested in clinic because of "PCOS"
    And I wait for "1" seconds
    And Patient would like to have "4" amount of children
    And I wait for "1" seconds
    And I add an additional comment "I WANT A BABY"
    And I wait for "1" seconds
    And I click next

    # Page 1
    # Insurance tab
    # Health Information
    And I fill in the health information with the following:
      | patient insurance?          | Yes       |
      | insurance company           | Aetna     |
      | id                          | 22343     |
      | phone number                | 3244345   |
      | group                       | 345       |
      | seperate pharmacy card      | Yes       |
      | member services phone number|3244452345 |
      | pharmacy benefit manager    | daniel    |
      | holder name                 | Jerome    |
      | relationship                | Spouse    |
      | insured ssn                 | 3312323   |
      | date of birth               | 12311987  |

    # Employer Information
    And I add employer information:
      | name of company | Test Company  |
      | occupation      | Janitor       |
      | address         | 31 lane street|
      | city            | Lanley        |
      | state           | CO            |
      | zip             | 11232         |
      | employer phone  | 2344324345    |

    And I add a secondary insurance
    And I wait for "1" seconds
    #Filling in secondary health insurance information
    And I fill in the secondary health information with the following:
      | insurance company        | Aetna  |
      | id                       | 22343  |
      | phone number             | 3244345|
      | group                    | 345    |
      | seperate pharmacy card   | Yes    |
      | member services phone number| 2134564532 |
      | pharmacy benefit manager | daniel |
      | holder name              | Jerome |
      | relationship             | Spouse |
      | insured name             | Benzo  |
      | share insurance          | Yes    |
      | date of birth            | 11211967 |
    And I click next

    # Page 1
    # Gynecological History
    And I fill out the gynecological history with the following:
      | conception                                    | 4                        |
      | conception date                               | Year(s)                  |
      | ovulating                                     | Yes                      |
      | how did patient check for ovulating           | Ovulation predictor kit  |
      | what day of cycle did patient ovulate         | 5                        |
      | first period                                  | 14                       |
      | date of last period                           | 03192016                 |
      | patients period                               | Regular                  |
      | how painful are periods?                      | Moderate                 |
      | pelvic cramps                                 | Mid cycle                |
      | pelvic cramps are?                            | Improving                |
      | period changed over time?                     | No                       |
      | days between first period and next            | 10                       |
      | how long does period last                     | 9                        |
      | does patient bleed or spot in between periods | Yes                      |
      | problems with acne or increased hair growth   | No                       |
    And I click next

    # Page 2
    # Gynecological History
    And I put "Yes" for has patient used contraception
    And I fill out contraception history question with:
      | type        | condom              |
      | year began  | 2010                |
      | year end    | 2015                |
      | details     | this is a test also |
    And I click next

    # Page 3
    # Gynecological History
    And I select "Endometriosis" for the patient history
    And I wait for "2" seconds
    And I select date of "112016" for patient pap smear
    And I select date of "112015" for patient mammogram
    And I fill in last mammogram results with "its all good"
    And I fill in "No" for abnormal pap smear results
    And I click next

     # Page 4
     # Gynecological History
    And I fill in if patient has had the following with "Cryotherapy"
    And I fill in if patient experienced pain during intercourse with "No"
    And I click next

    # Page 5
    # Gynecological History
    And I fill in if the patient has undergone infertility testing in the past with "Yes"
    And I wait for "2" seconds
    And I fill in the infertility testing information with:
      | physician            | Pierre Monroe|
      | diagnosis            | healthy      |
      | infertility duration | 10           |
      | month/years          | Months       |
      | clinic               | stony brook  |
    And I fill in patients blood test history type with "Chromosomal studies"
#    And I wait for "2" seconds
    And I click next

     # Page 6
     # Gynecological History
    And I fill in fertility tests patient has undergone with "Cervical cultures"
    And I click next

    # Page 1
    # Pregnancy History
    And I put "Yes" for has patient been pregnant
    And I fill in the info for pregnancy one:
      | ending month                   | March                             |
      | ending year                    | 2016                              |
      | months to conceive             | 5                                 |
      | treatment required to conceive | Yes                               |
      | conceived with                 | Current partner                   |
      | live birth                     | No                                |
      | please explain                  | Stillbirth                        |
      #| weeks into pregnancy           | 5                                 |
      | notes                          | I had my first pregnancy last year|
    # Adding a second pregnancy
#    And I add a second pregnancy with the credentials:
#      | ending month                   | May            |
#      | ending year                    | 2015           |
#      | treatment required to conceive | Yes            |
#      | conceived with                 | Current partner|
#      | live birth                     | No             |
#      | please explain                 | Stillbirth     |
#    And I click next
    And I click next

    # Page 1
    # Fertility Therapy History
    And I fill in if patient has undergone fertilty therapy with "No"
    And I click next

    # Page 1
    # Medical History
    And I check "Blood Transfusion" for the patients previous medical history
    And I click next


    # Page 1
    # Surgical History
    And I fill in if the patient has had any surgeries with "No"
    And I fill out if the patient has had a tubal ligation with "Yes"
    And I fill out tubal ligation details with "Not sure what this is"
    And I click next
    And I wait for "1" seconds

    # Page 1
    # Medications
    And I fill in if patient has had a history of therapeutic x-ray treatment or anti-cancer drugs with "Yes"
    And I fill in the text details for x-ray treatment with "This is a test"
    And I fill out if the patient is taking prescriptions with "No"
    And I fill out that the patient is allergic to "Penicillin"
    And I click next


    # Family History
    And I fill out a possible condition that a patients family can have with "Cystic fibrosis"
    And I fill out mothers age of menopause with "45"
    And I click next
    And I fill out patients blood relatives with "European"
    And I fill out if the patient has had genetic screening with "Yes"
    And I fill in genetic screening details with "It was a test"
    And I click next

    # Social History
    And I wait for "2" seconds
    And I check "Alcohol" for item that patient has previously used
    And I check "Radiation" for patient exposure
    And I wait for "2" seconds
    And I fill in the dietary restrictions with "Yes"
    And I fill in dietary restriction details with "I cannot eat pork"
    And I fill in the patient exercises "3" times per week
    And I click next

    # Patients Comment
    And I fill in patient treatment option text field with "I have tried everything"
    And I fill in additional information with "This form is rather long"
    And I click next
    And I wait for "2" seconds
    Then I logout

    # deleting patient from Polaris
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I wait for "2" seconds
    Given I search for patient "Jayna Logen" with a date of birth of "01201988"
    When I delete the patient
    And I wait for "2" seconds
    Then I verify patient "Jayna Logen" with a birth date of "01201988" is removed
    Then I logout
