@feature_file
Feature: I want to be able to create a user(patient), and fill in additional information for the patient on the consult form
  from a front desk users point of view that may have been missed or skipped on intake form.
  I then want to remove the user from Polaris for resetting purposes.

  Background: Start of by visiting Polaris's official home page, and logging in.

      # logging in as a front desk user
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    Then Polaris icon is displayed

  @Polaris
  @E2E
  @CX152997-13
  Scenario: I want to create a user on Polaris and fill out the intake form as a front desk user.
    And I follow Add Patient
    And I wait for "1" seconds
    And I fill in the patient information form with the following:
      | first name          | Kaitlin            |
      | last name           | Rogers             |
      | email               | krog@gmail.com     |
      | date of birth       | 01201975           |
      | ref physician       | Dr.Juelz           |
      | gender              | Female             |
      | physician           | Jeffrey Klein      |
      | office location     | White Plains       |
    And I follow submit
    And I follow yes continue
    Given I search for patient "Kaitlin Rogers" with a date of birth of "01201975"
    When I follow Consult
    And I select next

  # Gynecological history
    And I fill out the gynecological history with:
      | lmp                      | 01162014           |
      | spot between periods     | Yes                |
      | period length            | 3                  |
      | period changed over time | Yes                |
      | period change description| Test               |
      | menstrual cycle length   | 2                  |
      | painful periods          | Mild               |
      | medication for cramps    | Yes                |
      | patient pelvic pain      | Improving          |
      | irregular periods        | No                 |
      | menarche                 | 15                 |
      | dyspareunia              | No                 |
      | last pap smear           | 052016             |
      | adult acne               | Yes                |
      | abnormal pap results     | Yes                |
      | abnormal pap date        | 03142016           |
      | abnormal pap details     | This is a test     |
      | last mammogram date      | 052013             |
      | last mammogram result    | passed with colors |
      | gynecological disorders  | Mycoplasma         |
      | gynecological procedures | Cryotherapy        |

    And I fill out the fertility history with:
      | time trying to conceive          | 12              |
      | checked ovulation                | Yes             |
      | how checked                      | other           |
      | ovulation day                    | 3               |
      | how checked ovulation description| Took a test     |
      | sexually intimate with partner   | Yes             |
      | intercourse frequency            | 5               |
      | ic frequency ovulation           | 14              |
      | previous fertility consultation  | Yes             |
      | treatment physician              | Mr. Grumps      |
      | treatment diagnosis              | Yes             |
      | infertiliy duration              | 5               |
      | time unit                        | Basal body temp |
      | tubal ligation                   | Yes             |
      | tubal ligation details           | This is a test  |
    And I fill in the chief complaint details with "This is the chief complaint"
    And I fill in the HPI details with "this is the hpi"
    And I add in contraceptive information with the following:
      |type       | Test Contraceptive   |
      |year began | 2015                 |
      |year end   | 2016                 |
      |details    | Contraception details|
    And I add in pregnancy information with the following:
      |ending month                  | February        |
      |ending year                   | 2015            |
      |months to conceive            | 5               |
      |treatment required to receive | Yes             |
      |conceived with                | Current partner |
      |live birth                    | No              |
      |please explain                | Miscarriage     |
      |weeks into pregnancy          | 20              |
      |genetic testing performed?    | Yes             |
      |notes                         | Pregnancy info  |
      |additional notes              | Test pregnancy  |

    And I add blood test with "Testosterone" with note "This is a test"
###    And I fill in non ivf history with the following:
####     #| protocol |Injectable |
####      | month    |January    |
    And I fill in the past medical information with the following:
      |history of conditions| Asthma|
      |notes                | Test  |
    And I fill in the surgical history information with the following:
      | month    | March                |
      | year     | 2014                 |
      | hospital | Stony Brook hospital |
      | surgeon  | dr. Howard           |
      | procedure| cycle therapy        |
      | findings | None at the moment   |
      | notes    | this is a test       |
    And I fill in the medication information with the following:
      | name            | tylenol |
      | diagnosis       | healthy |
      | date prescribed | 11/2015 |
      | route           | 66      |
      | dosage          | 12      |
      | dosage amt      | mg      |
      | directions      | 2 a day |
      | reaction        | no react|
    And I add "Penicillin" for medication allergies with note "This is a test"
    And I select "Yes" for x-ray or anti-cancer drugs with text "This is a test"
    And I add a medication note with the following "Test"
    And I fill in the family information with the following:
     # | family illnesses         | Bleeding disorder |
      | mothers age of menopause | 50             |
      | ethnicity                | Native american|
      | blood related to partner | Yes            |
      | genetic screening        | Yes            |
      | genetic details          | Genetic detail |
      | genetic note             | This is a test |
    And I fill in the social information with the following:
      | occupation                  | Nurse          |
      | dietary restrictions        | Yes            |
      | dietary restriction details | This is a test |
      | caffeine                    | Yes            |
      | coffees per day             | 15             |
      | teas per day                | 10             |
      | caffeinated sodas per day   | 15             |
      | exercise                    | 10             |
      | alcohol                     | No             |
      | exercise intensity          | 15             |
      | cigarettes                  | No             |
      | exposure                    | Toxic fumes    |
      | drugs                       | No             |
      | social note                 | Social Test    |
    And I add a social note with the following "Test"
    And I select all normal for the ROS questions
    And I add a ROS message with the following "This is a test"
    And I select that the medical history was reviewed with the patient
    And I select next on medical history page
    And I wait for "2" seconds
    # exams
    # vitals
    And I fill in vital information with the following:
      | height feet   | 6  |
      | height inches | 0  |
      | weight        | 145|
    And I wait for "1" seconds
    And I checked vitals recorded elsewhere
    And I wait for "1" seconds
    And I fill in the blood pressure with systolic "133", and diastolic info with "155"
    And I wait for "1" seconds
    # physical
    And I select the physical all normal checkbox
    And I select the physical deferred checkbox
    And I add a physical message with the following "This is a test"
    And I wait for "2" seconds
    # pelvic
    And I select the pelvic all normal checkbox
    And I select the pelvic defered checkbox
    And I add a pelvic message with the following "This is  test"
    # ultrasound
    And I select transvaginal for the ultrasound type
    And I select transabdominal for the ultrasound type
    And I select the ultrasound all normal checkbox
    # And I select the deferred checkbox
    And I add in "121" for the right bafc
    And I add in "143" for the left bafc
    And I add a ultrasound message with the following "Test"
    And I select next from the exams page
    And I wait for "3" seconds
    # assessment & plan
    And I fill in the assessment notes with the following "Asses Notes"
    And I in the plan notes with the following "Plan Notes"
    And I wait for "3" seconds

    And I select "Requested" for the old medical records
    And I select "Egg freezing" for the counseled options
    And I wait for "3" seconds

    And I fill in "15" for the time spent face to face in minutes
    And I select see dictation
    And I select submit with signature "Mr. Jonas"
    And I wait for "3" seconds
    And I follow Consult
    And I verify the read only consult message

     # deleting patient from Polaris
    Given I visit Polaris's home page
    When I login to Polaris with email "nydoc2@example.com" and  password "pivotal1"
    And I wait for "2" seconds
    Given I search for patient "Kaitlin Rogers" with a date of birth of "01201975"
    When I delete the patient
    And I wait for "2" seconds
    Then I verify patient "Kaitlin Rogers" with a birth date of "01201975" is removed
    Then I logout

