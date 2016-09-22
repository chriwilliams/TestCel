module Polaris
  module PageObject
    module Pages

      class Intake < SitePrism::Page
        # General Information
        element :ss_number, '#general_info_ssn1'
        element :preferred_name, '#general_info_preferred_name'
        element :occupation, '#general_info_occupation'
        element :employer, '#general_info_employer'
        elements :marital_status, '.grouped div'
        elements :marital_status_checkbox, '.grouped label'
        elements :page_index, '.pager a'
        element :mar_years, '#general_info_marriage_years'
        # Address
        element :street_address, '#general_info_address_street'
        element :apt, '#general_info_address_apt'
        element :address_city, '#general_info_address_city'
        element :address_zip_code, '#general_info_address_zip'
        element :country_dropdown, 'div.country:nth-child(2)'
        elements :country_select, '.transition div'
        element :address_state_dropdown, '.general_info_address_state > div:nth-child(2)'
        elements :state, '.transition div'
        element :next, 'input[class$="ui button"]'
        # Phone
        element :primary_phone, 'input[id$="general_info_primary_phone"]'
        element :primary_phone_type_dropdown, 'div.selection:nth-child(2)'
        elements :primary_phone_type_select, 'div.menu:nth-child(4) div'
        element :secondary_phone, 'input[id$="general_info_secondary_phone"]'
        element :current_gynecologist, 'input[id$="general_info_current_gynecologist_name"]'
        element :current_gynecologist_phone, 'input[id$="general_info_current_gynecologist_phone"]'
        element :primary_care_name, 'input[id$="general_info_primary_care_name"]'
        element :primary_care_phone, 'input[id$="general_info_primary_care_phone"]'
        element :pharmacy_name, 'input[id$="general_info_pharmacy_name"]'
        element :pharmacy_phone, 'input[id$="general_info_pharmacy_phone"]'
        element :emergency_contact_name, 'input[id$="general_info_emergency_contact_name"]'
        element :emergency_contact_phone, 'input[id$="general_info_emergency_contact_phone"]'
        element :relationship, 'input[id$="general_info_emergency_contact_relationship"]'
        # personal info
        element :height, 'input[id$="general_info_height_feet"]'
        element :inches, 'input[id$="general_info_height_inches"]'
        element :weight, 'input[id$="general_info_weight"]'
        elements :ethnicity, '.grouped div'
        elements :patient_reasons, 'div.check_boxes_with_few_details div'
        element :children_dropdown, 'div.select:nth-child(2)'
        elements :children_selection, 'div.menu:nth-child(4) div'
        element :additional_info, :xpath, '//*[@id="general_info_additional_comments"]'
        # insurance
        elements :health_insurance, '.insurance_info_have_insurance > div label'
        element :insurance_company_dropdown, '.insurance_info_primary_insurance_company > div:nth-child(2) > div:nth-child(1) > div'
        elements :insurance_company_select, '.transition div'
        element :id, '#insurance_info_primary_id'
        element :phone_number, '#insurance_info_primary_phone_number1'
        element :group, '#insurance_info_primary_group_number'
        elements :seperate_card, '.insurance_info_primary_separate_pharmacy_card > div:nth-child(2) label'
        element :pharmacy_benefit_manager, '#insurance_info_primary_pharmacy_benefit_manager'
        element :holder_name, 'input[id$="insurance_info_primary_holder_name"]'
        element :relationship_dropdown, '.insurance_info_primary_relationship > div:nth-child(2)'
        elements :relationship_select, '.transition div'
        element :insured_ssn, '#insurance_info_primary_insured_ssn'
        element :dob, 'input[id$="insurance_info_primary_date_of_birth"]'
        element :member_service_phone_number, '#insurance_info_primary_member_services_phone_number1'
        # employer information
        element :name_of_company, '#insurance_info_employer_name'
        element :occupations, '#insurance_info_occupation'
        element :address, '#insurance_info_employer_street'
        element :city, '#insurance_info_employer_city'
        element :state_dropdown, 'div.select:nth-child(1) > div:nth-child(2)'
        elements :address_state_selector, '.transition div'
        element :zip_code, '#insurance_info_employer_zip'
        element :employer_phone, 'input[id$="insurance_info_employer_phone1"]'
        element :add_secondary, '.secondary-insurance-info-add'
        # secondary info
        element :insurance_company_dropdown_secondary, '.insurance_info_secondary_insurance_company > div:nth-child(2) > div:nth-child(1) > div:nth-child(1)'
        elements :insurance_company_selection_secondary, '.transition div'
        element :phone_number_secondary, '#insurance_info_secondary_phone_number1'
        element :id_secondary, '#insurance_info_secondary_id'
        element :group_secondary, '#insurance_info_secondary_group_number'
        elements :seperate_pharmacy_card_secondary, '.insurance_info_secondary_separate_pharmacy_card div'
        element :pharmacy_benefit_manager_secondary, '#insurance_info_secondary_pharmacy_benefit_manager'
        element :relationship_dropdown_secondary, '.insurance_info_secondary_relationship > div:nth-child(2)'
        elements :relationship_selection_secondary, '.transition div'
        elements :partner_insurance, 'span.ui input'
        element :holder_name_secondary, '#insurance_info_secondary_holder_name'
        element :insured_name_secondary, '#insurance_info_secondary_insured_name'
        element :date_of_birth_secondary, '#insurance_info_secondary_date_of_birth'
        element :member_services_phone_number, '#insurance_info_secondary_member_services_phone_number1'
        # Gynecological History
        element :conception_time, 'input[id$="gynecological_history_attempted_conception_time"]'
        element :conception_date_dropdown, 'div.basic:nth-child(2)'
        elements :conception_date_select, '.transition div'
        elements :ovulating, 'div.radio_buttons:nth-child(2) div'
        element :first_period_dropdown, '.gynecological_history_age_of_first_period > div:nth-child(2)'
        elements :first_period_select, '.transition div'
        element :date_of_last_period, '#gynecological_history_date_of_last_period'
        elements :patients_period, 'div.radio_buttons:nth-child(1) div'
        element :how_painful_dropdown, '.gynecological_history_painful_periods > div:nth-child(2)'
        elements :how_painful_select, '.transition div'
        elements :period_changed_over_time, 'div.field:nth-child(9) > div:nth-child(2) label'
        element :days_btwn_first_period_and_next, '#gynecological_history_length_of_periods'
        element :how_long_period_lasts, '#gynecological_history_period_timing'
        elements :bleed_or_spot_between_periods, 'div.grouped:nth-child(12) div'
        elements :problem_with_acne_hair_growth, 'div.grouped:nth-child(13) div'
        element :patient_check_ovulating_dropdown, '.gynecological_history_how_checked_ovulation > div:nth-child(2)'
        elements :patient_check_ovulating_section, '.transition div'
        element :day_of_cycle_patient_ovulate_dropdown, 'div.select:nth-child(3) > div:nth-child(2)'
        elements :day_of_cycle_patient_ovulate_select, '.transition div'
        element :pap_smear_date, '#gynecological_history_last_pap_smear'
        element :mammogram_date, '#gynecological_history_last_mammogram'
        elements :pap_results, 'div.grouped:nth-child(4) div'
        elements :patient_his, '.cmx-stage-container label'
        element :last_mammogram_result, '#gynecological_history_last_mammogram_results'
        elements :patient_had_the_following, '#gynecological-procedures label'
        elements :pains_during_intercourse, 'div.grouped:nth-child(4) div'
        elements :testing_in_past, 'div.radio_buttons div'
        elements :blood_test_patients_had, '#gh-blood-tests label'
        element :blood_date, '.two > input:nth-child(2)'
        element :blood_result, '.labeled > input:nth-child(1)'
        element :blood_clinic, 'div.wide:nth-child(3) > input:nth-child(2)'
        elements :fertility_test, '#basic-fertility-tests label'
        element :physician_testing, '#gynecological_history_infertility_tests_1_physician'
        element :diagnosis_testing, '#gynecological_history_infertility_tests_1_diagnosis'
        element :infertility_duration_testing, '#gynecological_history_infertility_tests_1_duration'
        element :months_years_dropdown, 'div.basic:nth-child(2)'
        elements :months_years_select, 'div.menu:nth-child(4) div'
        element :clinic_testing, '#gynecological_history_infertility_tests_1_clinic'
        element :contraception_type, '#gynecological_history_contraceptives_attributes_0_contraceptive_type'
        element :contraception_year_began_dropdown, '.gynecological_history_contraceptives_year_began > div:nth-child(2)'
        elements :contraception_year_began_select, '.transition div'
        element :contraception_year_end_dropdown, 'div.select:nth-child(3) > div:nth-child(2)'
        elements :contraception_year_end_select, '.transition div'
        element :contraception_text, 'input[id$="gynecological_history_contraceptives_attributes_0_details"]'
        elements :pelvic_cramps, '.gynecological_history_cramps_timing label'
        elements :pelvic_cramps_are, '.gynecological_history_cramps_status label'
        # Pregnancy History
        elements :has_patient_been_pregnant, 'div.radio_buttons_with_single_detail > div:nth-child(2) div'
        element :ending_month_dropdown, '.pregnancy_datum_pregnancies_ending_month > div:nth-child(2)'
        elements :ending_month_select, 'div.active:nth-child(2) div'
        element :ending_year_dropdown, 'div.modular-info:nth-child(1) > div:nth-child(3) > div:nth-child(2) > div:nth-child(2)'
        elements :ending_year_select, 'div.visible:nth-child(4) div'
        element :months_to_conceive, '#pregnancy_datum_pregnancies_attributes_0_months_to_conceive'
        elements :treatment_required_to_conceive, '.pregnancy_datum_pregnancies_treatment_required div'
        elements :conceived_with, '.pregnancy_datum_pregnancies_conceived_with div'
        elements :live_birth, 'div.grouped:nth-child(6) div'
        element :notes, '#pregnancy_datum_pregnancies_attributes_0_notes'
        elements :patient_used_contraception, '.grouped label'
        element :please_explain_dropdown, '.pregnancy_datum_pregnancies_live_birth_explain > div:nth-child(2)'
        elements :please_explain_select, '.transition div'
        element :weeks_into_pregnancy, '#pregnancy_datum_pregnancy_datum_pregnancies_1_miscarriage_len_into_pregnancy'
        element :genetic_testing_performed_dropdown, 'div.select_with_single_detail_field > div:nth-child(2) > div:nth-child(1) > div:nth-child(1)'
        elements :genetic_testing_performed_select, 'div.visible:nth-child(4) div'
        element :add_pregnancy_button, '.add_fields'
        element :ending_month_dropdown_second, 'div.modular-info:nth-child(2) > div:nth-child(3) > div:nth-child(1) > div'
        elements :ending_month_select_second, '.upward div'
        element :ending_year_dropdown_second, 'div.modular-info:nth-child(2) > div:nth-child(3) > div:nth-child(2) > div:nth-child(2)'
        elements :ending_year_select_second, '.transition div'
        element :month_to_conceive_second, :xpath, '//*[contains(@id,"pregnancy_datum_pregnancies_attributes")]'
        elements :treatment_required_receive_second, 'div.modular-info:nth-child(2) > div:nth-child(4) > div:nth-child(1) label'
        elements :conceive_with_second, 'div.modular-info:nth-child(2) > div:nth-child(5) > div:nth-child(1) label'
        elements :live_birth_second, 'div.modular-info:nth-child(2) > div:nth-child(6) div'
        element :please_explain_dropdown_secondary, '#live-birth-no-new_pregnancies > div:nth-child(1) > div:nth-child(2)'
        elements :please_explain_select_secondary, '.transition div'
        # Fertility Therapy
        elements :fertility_history, 'div.grouped:nth-child(2) div'
        # Medical History
        elements :medical_history_check, 'div.grouped:nth-child(2) label'
        # Surgical History
        elements :patient_surgery_rb, 'div.radio_buttons_with_single_detail:nth-child(1) > div:nth-child(2) label'
        elements :tube_ligation_rb, 'div.radio_buttons_with_single_detail:nth-child(3) > div:nth-child(2) label'
        element :tubal_ligation_details, '#tubal_ligation-details'
        # Medications
        elements :therapeutic_xray_treatment, 'div.radio_buttons_with_single_detail > div:nth-child(2) label'
        elements :prescription, 'div.radio_buttons input'
        element :medication_details, '#xray_cancer_drugs-details'
        elements :allergies, 'div.check_boxes_with_details > div:nth-child(2) label'
        # Family History
        elements :family_history_checkbox, '.grouped label'
        element :mothers_age_menopause, '#family_history_mother_menopause_age'
        element :family_tab, 'a.sub-item:nth-child(7) > span:nth-child(1)'
        element :medical_history_tab, 'div.active:nth-child(3) > span:nth-child(1)'
        elements :blood_relative_rb, 'div.check_boxes_with_details > div:nth-child(2) label'
        elements :genetic_screen, 'div.radio_buttons_with_single_detail > div:nth-child(2) label'
        element :genetic_screening_details, '#basic_genetic_screening-details'
        # Social History
        elements :social_history_past, '#drugs label'
        elements :patient_exposure_rb, '#exposure div'
        elements :dietary_restrictions, 'div.radio_buttons_with_single_detail > div:nth-child(2) label'
        element :dietary_restrictions_text, '#dietary_restrictions-details'
        element :patient_exercise, '#social_history_exercise_hours_per_week'
        # Patients Comments
        element :treatment_options_text, '#patient_comments_fertility_understanding'
        element :additional_text, '#patient_comments_comment'

        # method for selecting the status of the patients marriage
        # @param status [string] name of the status desired for marital selection
        def mar_status(status)
          marital_status.each do |stat|
            stat.click if stat.text == status
          end
        end

        # method for selecting the patients country
        # @param country [string] name of the patients country for the general information
        def country_selects(country)
          country_dropdown.click
          sleep 1
          country_select.each do |ct|
            ct.click if ct.text == country
          end
        end

        # method for selecting the patients state
        # @param states [string] name of the patient current state for the general information
        def state_select(states)
          address_state_dropdown.click
          address_state_selector.each do |stat|
            stat.click if stat.text == states
          end
        end

        # table for adding in the patients phone information
        # @param table [table] table for patients phone number information
        def phone_information(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'primary phone'
                primary_phone.set row[1]
              when 'primary phone type'
                primary_phone_type_dropdown.click
                primary_phone_type_select.each do |phone|
                  phone.click if phone.text == row[1]
                end
              when 'secondary phone'
                secondary_phone.set row[1]
              when 'current gynecologist'
                current_gynecologist.set row[1]
              when 'current gynecologist phone'
                current_gynecologist_phone.set row[1]
              when 'primary care name'
                primary_care_name.set row[1]
              when 'primary care phone'
                primary_care_phone.set row[1]
              when 'pharmacy name'
                pharmacy_name.set row[1]
              when 'pharmacy phone'
                pharmacy_phone.set row[1]
              when 'emergency contact name'
                sleep 3
                emergency_contact_name.set row[1]
              when 'emergency contact phone'
                sleep 3
                emergency_contact_phone.set row[1]
              when 'relationships'
                relationship.set row[1]
            end
          end
        end

        # table for adding in a patients personal information
        # @param table [table] table that fulfills data for personal information section
        def personal_info(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'height'
                height.set row[1]
              when 'inches'
                inches.set row[1]
              when 'weight'
                weight.set row[1]
              when 'ethnicity'
                ethnicity.each do |et|
                  et.click if et.text == row[1]
                end
            end
          end
        end

        # method for selecting the reason for entering cycle
        # @param test [string] selection the reason for going through testing
        def reasoning(test)
          for i in patient_reasons
            i.click if i.text == test
          end
        end

        # method for the desired amount of children wanted
        # @param test [string] selection of the amount of desired children
        def children(test2)
          children_dropdown.click
          for i in children_selection
            i.click if i.text == test2
          end
        end

        # Revisit. Failing when navigating to another page
        def page_nav(number)
          for i in page_index
            i.click if i.text == number
          end
        end

        # table for selecting the insurance information
        # @param table [table] table for selecting the patients insurance info
        def insurance(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'patient insurance?'
                health_insurance.each do |hi|
                  hi.click if hi.text == row[1]
                end
              when 'insurance company'
                insurance_company_dropdown.click
                for i in insurance_company_select
                  i.click if i.text == row[1]
                end
              when 'id'
                id.set row[1]
              when 'phone number'
                phone_number.set row[1]
              when 'group'
                group.set row[1]
              when 'seperate pharmacy card'
                seperate_card.each do |card|
                  card.click if card.text == row[1]
                end
              when 'member services phone number'
                member_service_phone_number.set row[1]
              when 'pharmacy benefit manager'
                pharmacy_benefit_manager.set row[1]
                sleep 2
              when 'date of birth'
                sleep 2
                dob.click
                dob.set row[1]
              when 'relationship'
                relationship_dropdown.click
                relationship_select.each do |relation|
                  relation.click if relation.text == row[1]
                end
                sleep 2
              when 'holder name'
                holder_name.set row[1]
              when 'insured ssn'
                insured_ssn.set row[1]
            end
          end
        end

        # method for filling out the patients information
        # @param table [table] selection the reason for going through testing
        def employer_information(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'name of company'
                name_of_company.set row[1]
              when 'occupation'
                occupations.set row[1]
              when 'address'
                address.set row[1]
              when 'city'
                city.set row[1]
                sleep 3
              when 'state'
                sleep 1
                state_dropdown.click
                address_state_selector.each do |states|
                  states.click if states.text == row[1]
                end
              when 'zip'
                zip_code.set row[1]
                sleep 3
              when 'employer phone'
                employer_phone.set row[1]
            end
          end
        end

        # method for implementing second insurance information
        # @param table [table] adding the insurance information for the second insurance fields
        def secondary_insurance(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'insurance company'
                insurance_company_dropdown_secondary.click
                sleep 1
                insurance_company_selection_secondary.each do |health|
                  health.click if health.text == row[1]
                end
              when 'phone number'
                phone_number_secondary.set row[1]
              when 'id'
                id_secondary.set row[1]
              when 'group'
                group_secondary.set row[1]
              when 'seperate pharmacy card'
                seperate_pharmacy_card_secondary.each do |card|
                  card.click if card.text == row[1]
                end
              when 'member services phone number'
                member_services_phone_number.set row[1]
              when 'pharmacy benefit manager'
                pharmacy_benefit_manager_secondary.set row[1]
              when 'holder name'
                holder_name_secondary.set row[1]
              when 'relationship'
                relationship_dropdown_secondary.click
                for i in relationship_selection_secondary
                  i.click if i.text == row[1]
                end
              when 'share insurance'
                partner_insurance.each do |share|
                  share.click if share.text == row[1]
                end
              when 'insured name'
                insured_name_secondary.set row[1]
              when 'date of birth'
                date_of_birth_secondary.set row[1]
            end
          end
        end

        # method for adding the data in for the gynecological history portion for the patient
        # @param table [table] table for the gynecological history
        def gynecological_history(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'conception'
                conception_time.set row[1]
              when 'conception date'
                conception_date_dropdown.click
                for i in conception_date_select
                  i.click if i.text == row[1]
                end
              when 'ovulating'
                sleep 3
                for i in ovulating
                  i.click if i.text == row[1]
                  sleep 3
                end
              when 'how did patient check for ovulating'
                patient_check_ovulating_dropdown.click
                for i in patient_check_ovulating_section
                  i.click if i.text == row[1]
                end
                sleep 1
              when 'what day of cycle did patient ovulate'
                day_of_cycle_patient_ovulate_dropdown.click
                for i in day_of_cycle_patient_ovulate_select
                  i.click if i.text ==row[1]
                end
              when 'first period'
                first_period_dropdown.click
                for i in first_period_select
                  i.click if i.text == row[1]
                end
              when 'date of last period'
                date_of_last_period.click
                date_of_last_period.set row[1]
              when 'patients period'
                for i in patients_period
                  i.click if i.text == row[1]
                end
              when 'how painful are periods?'
                how_painful_dropdown.click
                for i in how_painful_select
                  i.click if i.text == row[1]
                end
              when 'pelvic cramps'
                pelvic_cramps.each do |pcs|
                  pcs.click if pcs.text == row[1]
                end
              when 'pelvic cramps are?'
                pelvic_cramps_are.each do |pca|
                  pca.click if pca.text == row[1]
                end
              when 'period changed over time?'
                for i in period_changed_over_time
                  i.click if i.text == row[1]
                end
              when 'days between first period and next'
                days_btwn_first_period_and_next.set row[1]
                sleep 1
              when 'how long does period last'
                how_long_period_lasts.set row[1]
                sleep 1
              when 'does patient bleed or spot in between periods'
                for i in bleed_or_spot_between_periods
                  i.click if i.text == row[1]
                end
                sleep 1
              when 'problems with acne or increased hair growth'
                for i in problem_with_acne_hair_growth
                  i.click if i.text == row[1]
                end
                sleep 1
            end
          end
        end

        # method for selecting if patient uses a contraception
        # @param used_c [string] selection for patient to choose information for contraception.
        def has_patient_used_contraception(used_c)
          patient_used_contraception.each do |contraception|
            contraception.click if contraception.text == used_c
          end
        end

        # method for selecting the reason for entering cycle
        # @param test [string] selection the reason for going through testing
        def is_patient_pregnant(pregnant)
          has_patient_been_pregnant.each do |test|
            test.click if test.text == pregnant
          end
        end

        #pregnancy history page 1
        # table for selecting
        # @param test [string] selection the reason for going through testing
        def pregnancy_one(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'ending month'
                ending_month_dropdown.click
                ending_month_select.each do |end_month|
                  end_month.click if end_month.text == row[1]
                end
              when 'ending year'
                ending_year_dropdown.click
                sleep 1
                ending_year_select.each do |end_year|
                  end_year.click if end_year.text == row[1]
                end
              when 'months to conceive'
                months_to_conceive.set row[1]
              when 'treatment required to conceive'
                treatment_required_to_conceive.each do |treat|
                  treat.click if treat.text == row[1]
                end
              when 'conceived with'
                conceived_with.each do |conceived|
                  conceived.click if conceived.text == row[1]
                end
              when 'live birth'
                live_birth.each do |live|
                  live.click if live.text == row[1]
                end
              when 'please explain'
                please_explain_dropdown.click
                please_explain_select.each do |explain|
                  explain.click if explain.text == row[1]
                end
              when 'weeks into pregnancy'
                weeks_into_pregnancy.set row[1]
              when 'genetic testing performed?'
                genetic_testing_performed_dropdown.click
                gentic_testing_performed_select.each do |test|
                  test.click if test.text == row[1]
                end
              when 'notes'
                notes.set row[1]
                sleep 4
            end
          end
        end

        # Selecting a status for patient history
        # @param test [string] choosing a patient history selection
        def patient_history(test)
          patient_his.each do |history|
            history.click if history.text == test
          end
        end

        # Selecting a status for patient having abnormal pap results or not
        # @param pap [string] selecting an option if patient has an abnormal pap result
        def abnormal_pap_results(pap)
          for i in pap_results
            i.click if i.text == pap
          end
        end

        # Selecting if patient has following issues
        # @param pap [string] selecting an option if patient has an abnormal pap result
        def patient_have_following(test)
          for i in patient_had_the_following
            i.click if i.text == test
          end
        end


        def pain_during_intercourse(bool)
          for i in pains_during_intercourse
            i.click if i.text == bool
          end
        end

        def undergone_testing_in_past(tor)
          for i in testing_in_past
            i.click if i.text == tor
          end
        end

        def blood_test_patient(btp)
          for i in blood_test_patients_had
            i.click if i.text == btp
          end
        end

        def patient_blood_detail(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'date'
                blood_date.set row[1]
              when 'results'
                blood_result.set row[1]
              when 'clinic'
                blood_clinic.set row[1]
            end
          end
        end

        def fertility_tests_undergone(test)
          for i in fertility_test
            i.click if i.text == test
          end
        end

        def fertility_therapy_history(fth)
          for i in fertility_history
            i.click if i.text == fth
          end
        end

        def infertility_test_date(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'physician'
                physician_testing.set row[1]
              when 'diagnosis'
                diagnosis_testing.set row[1]
              when 'infertility duration'
                infertility_duration_testing.set row[1]
              when 'month/years'
                months_years_dropdown.click
                months_years_select.each do |m_y|
                  m_y.click if m_y.text== row[1]
                end
              when 'clinic'
                clinic_testing.set row[1]
            end
          end
        end

        # medical history page 1
        def medical_history(mh)
          medical_history_check.each do |test|
            test.click if test.text == mh
          end
        end

        # Page 1
        # Surgical History

        # surgical history page 1
        def patient_surgery(ps)
          patient_surgery_rb.each do |psrb|
            psrb.click if psrb.text == ps
          end
        end

        # surgical history page 1
        def tubal_ligation(tl)
          tube_ligation_rb.each do |tlrb|
            tlrb.click if tlrb.text == tl
          end
        end

        # medications page 1
        def therapeutic_treatment(tt)
          therapeutic_xray_treatment.each do |txt|
            txt.click if txt.text == tt
          end
        end

        # medications page 1
        def prescriptions(p)
          prescription.each do |pt|
            pt.click if pt.text == p
          end
        end

        # medications page 1
        def patient_allergies_medication(pam)
          allergies.each do |am|
            am.click if am.text == pam
          end
        end

        # family history page 1
        def family_conditions(fc)
          family_history_checkbox.each do |fhc|
            fhc.click if fhc.text == fc
          end
        end

        # family history page 2
        def blood_relatives(br)
          blood_relative_rb.each do |brrb|
            brrb.click if brrb.text == br
          end
        end

        # family history page 2
        def genetic_screening(gs)
          genetic_screen.each do |screen|
            screen.click if screen.text == gs
          end
        end

        # social history page 1
        def social_history_past_meth(shp)
          social_history_past.each do|sh|
            sh.click if sh.text == shp
          end
        end

        def patient_exposure(pe)
          patient_exposure_rb.each do |perb|
            perb.click if perb.text == pe
          end
        end

        def dietary_restriction(dr_par)
          dietary_restrictions.each do |dr|
            dr.click if dr.text == dr_par
          end
        end

        # gynecological history page 2
        def contraception_table(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'type'
                contraception_type.set row[1]
              when 'year began'
                contraception_year_began_dropdown.click
                contraception_year_began_select.each do |cs|
                  cs.click if cs.text == row[1]
                end
              when 'year end'
                contraception_year_end_dropdown.click
                contraception_year_end_select.each do |ce|
                  ce.click if ce.text == row[1]
                end
              when 'details'
                contraception_text.set row[1]
            end
          end
        end

        # pregnancy history page 1
        def add_second_pregnancy(table)
          add_pregnancy_button.click
          table.raw.each do |row|
            case row[0].downcase
              when 'ending month'
                ending_month_dropdown_second.click
                ending_month_select.each do |ems|
                  ems.click if ems.text == row[1]
                end
              when 'ending year'
                ending_year_dropdown_second.click
                ending_year_select_second.each do |ey|
                  ey.click if ey.text == row[1]
                end
              when 'months to conceive'
                month_to_conceive_second.set row[1]
              when 'treatment required to conceive'
                treatment_required_receive_second.each do |trr|
                  trr.click if trr.text == row[1]
                end
              when 'conceived with'
                conceive_with_second.each do |cw|
                  cw.click if cw.text == row[1]
                end
              when 'live birth'
                live_birth_second.each do |lb|
                  lb.click if lb.text == row[1]
                end
              when 'please explain'
                please_explain_dropdown_secondary.click
                please_explain_select_secondary.each do |pe|
                  pe.click if pe.text == row[1]
                end
              when 'notes'
                notes_second.set row[1]
            end
          end
        end
      end
    end
  end
end

