module Polaris
  module PageObject
    module Pages

      class Consult < SitePrism::Page

        element :next_button, 'a.ui:nth-child(5)' # button
        # chief complaint & hpi
        element :chief_complaint, '#patient_record_patient_exam_attributes_chief_complaints' # text
        element :hpi, '#patient_record_patient_exam_attributes_history_of_present_illness'
        # gynecological
        element :add_contraceptive_button, :xpath, '//*[@id="gyn"]/div[2]/div/div[5]/a'
        element :contraceptive_type, '#gynecological_history_contraceptives_attributes_0_contraceptive_type'
        element :contraceptive_year_began_dropdown, '.gynecological_history_contraceptives_year_began > label:nth-child(1)'
        elements :contraceptive_year_began_select, 'div.transition:nth-child(4) div'
        element :contraceptive_year_end_dropdown, 'div.select:nth-child(3) > div:nth-child(2)'
        elements :contraceptive_year_end_select, 'div.transition:nth-child(4) div'
        element :contraceptive_details, '#gynecological_history_contraceptives_attributes_0_details'
        element :contraceptive_save, '#consult-submit-contraceptives'
        element :lmp, '#date_of_last_period'
        element :lmp_text, '#gynecological_history_date_of_last_period'
        element :spot_btwn_period, :xpath, '//*[@id="spot_between_periods"]'
        element :spot_btwn_period_dropdown, 'div[class$="ui selection dropdown"]'
        elements :spot_btwn_period_select, 'div.menu:nth-child(4) div'
        element :period_length, '#period_timing'
        element :period_length_text, '#gynecological_history_period_timing'
        element :period_change_over_time, '#period_changed'
        element :period_change_over_time_dropdown, 'div.selection:nth-child(4)'
        elements :period_change_over_time_select, 'div.menu:nth-child(4) div'
        element :gynecological_icon, '#gyn > div:nth-child(1) > div'
        element :period_change_description, 'input[id$="gynecological_history_period_changed_description"]'
        element :menstrual_cycle_length, '#length_of_periods'
        element :menstrual_cycle_length_text, '#gynecological_history_length_of_periods'
        element :painful_period, 'div.parent-grid:nth-child(1) > div:nth-child(2) > div:nth-child(3) > div:nth-child(2) > a:nth-child(1) > p:nth-child(1)'
        element :painful_period_dropdown, '.select'
        elements :painful_period_select, 'div.menu:nth-child(4) div'
        elements :medication_cramps, 'div.grouped:nth-child(3) div'
        elements :patients_pelvic_cramps, '#cramps-status div'
        element :painful_period_submit_button, '#painful-periods-submit'
        element :irregular_period, '#irregular_periods'
        element :irregular_period_dropdown, 'div.selection:nth-child(4)'
        elements :irregular_period_select, 'div.menu:nth-child(4) div'
        element :menarche, '#age_of_first_period'
        element :menarche_text, '#gynecological_history_age_of_first_period'
        element :dyspareunia, '#painful_intercouse'
        element :dyspareunia_dropdown, 'div.selection:nth-child(4)'
        elements :dyspareunia_select, 'div.menu:nth-child(4) div'
        element :last_pap_smear, '#last_pap_smear'
        element :last_pap_smear_date, '#gynecological_history_last_pap_smear'
        element :adult_acne, '#adult_acne_or_hair'
        element :adult_acne_dropdown, 'div.selection:nth-child(4)'
        elements :adult_acne_select, 'div.menu:nth-child(4) div'
        element :last_mammogram, '#last_mammogram'
        element :last_mammogram_date, '#gynecological_history_last_mammogram'
        element :last_mammogram_result, '#gynecological_history_last_mammogram_results'
        element :gynecological_disorder, '#gynecological-disorders > div:nth-child(2) > a:nth-child(1)'
        elements :gynecological_orders_cb, '#gyn-disorders-modal > div:nth-child(3) div'
        element :gynecological_submit, '#consult-gynecological-disorders-submit'
        element :gynecological_procedures, '#gynecological-procedures > div:nth-child(2) > a:nth-child(1)'
        elements :gynecological_disorders_cb, '#gyn-disorders-modal > div:nth-child(3) div'
        element :gd_submit, '#consult-gynecological-disorders-submit'
        elements :gynecological_procedures_cb, '#gyn-procedures-modal > div:nth-child(2) label'
        element :gp_submit, '#consult-gynecological-procedures-submit'
        element :abnormal_pap_results, '#abnormal_pap_results'
        element :abnormal_pap_result_dropdown, 'div.selection:nth-child(4)'
        elements :abnormal_pap_result_select, 'div.menu:nth-child(4) div'
        element :abnormal_pap_date, '#gynecological_history_abnormal_pap_date'
        element :abnormal_pap_details, '#gynecological_history_abnormal_pap_details'


        # add pregnancy
        element :add_pregnancy_button, '#add-pregnancy-link'
        element :pregnancy_ending_month_dropdown, '.pregnancy_datum_pregnancies_ending_month > label:nth-child(1)'
        elements :pregnancy_ending_month_select, 'div.transition:nth-child(4) div'
        element :pregnancy_ending_year_dropdown, '.pregnancy_datum_pregnancies_ending_year > label:nth-child(1)'
        elements :pregnancy_ending_year_select, 'div.visible:nth-child(4) div'
        element :pregnancy_months_to_conceive, '#pregnancy_datum_pregnancies_attributes_0_months_to_conceive'
        elements :pregnancy_treatment_required_to_conceive, 'div[class$="grouped fields radio_buttons required pregnancy_datum_pregnancies_treatment_required"] div'
        elements :pregnancy_conceive_with, '.pregnancy_datum_pregnancies_conceived_with div'
        elements :pregnancy_live_birth, 'div.grouped:nth-child(4) div'
        element :pregnancy_please_explain_dropdown, '.pregnancy_datum_pregnancies_live_birth_explain > div:nth-child(2)'
        elements :pregnancy_please_explain_select, 'div.transition:nth-child(4) div'
        element :pregnancy_notes, '#pregnancy_datum_pregnancies_attributes_0_notes'
        element :additional_notes, 'textarea[id$="patient_record_patient_exam_attributes_section_notes_pregnancy_datum"]'
        element :week_into_pregnancy, '#pregnancy_datum_pregnancies_attributes_0_miscarriage_len_into_pregnancy'
        element :genetic_testing_performed_dropdown, 'div.select_with_single_detail_field > div:nth-child(2) > div:nth-child(1) > div:nth-child(1)'
        elements :genetic_testing_performed_select, 'div.visible:nth-child(4) div'
        element :pregnancy_save_button, 'input[id$="consult-semen-analysis-submit"]'
        # fertility
        element :add_blood_test_button, '#ivf-cycle-treatments > div:nth-child(1) > a:nth-child(2)'
        elements :add_blood_test_select, 'div[id$="gh-blood-tests"] label'
        element :add_blood_test_save_button, '#blood-tests-edit-submit'
        element :add_blood_test_note, '#patient_record_patient_exam_attributes_section_notes_gynecological_history'
        element :non_ivf_history_button, :xpath, '//*[@id="non-ivf-history-row-info"]/a'
        element :protocol_dropdown, :xpath, '//*[@id="consult-ivf-cycle-treatments-edit"]/div[2]/div[2]/div/i'
        elements :protocol_selection, 'div.transition:nth-child(4) div'
        element :month_dropdown, '#consult-ivf-cycle-treatments-edit > div:nth-child(4) > div:nth-child(2) > div:nth-child(1)'
        elements :month_selection, 'div.visible:nth-child(4) div'
        element :time_conceive, '#attempted_conception_time'
        element :time_conceive_text, '#gynecological_history_attempted_conception_time'
        element :sexually_intimate, '#sexual_intimacy > p:nth-child(1)'
        element :sexually_intimate_dropdown, 'div.selection:nth-child(4)'
        elements :sexually_intimate_select, 'div.menu:nth-child(4) div'
        element :intercourse_frequency, '#intercourse_times_per_week'
        element :intercourse_frequency_text, '#gynecological_history_intercourse_times_per_week'
        element :ic_frequency_ovulation_text, '#gynecological_history_intercourse_during_ovulation'
        element :intercourse_during_ovulation, '#intercourse_during_ovulation'
        # previous fertility consultation question
        element :pf_consultation, '#had_treatment'
        element :pf_testing_dropdown, 'div.selection:nth-child(4)'
        elements :pf_testing_select, 'div.transition:nth-child(4) div'
        element :treatment_physician, '#gynecological_history_treatment_physician'
        element :treatment_diagnosis, 'input[id$="gynecological_history_infertility_duration"]'
        element :infertility_duration, '#gynecological_history_infertility_duration'
        element :time_unit_dropdown, 'div.ui:nth-child(12)'
        elements :time_unit_select, 'div.transition:nth-child(4) div'
        element :previous_fertility_tests, '#basic-fertility-tests-container > p:nth-child(1) > a:nth-child(1)'
        elements :previous_fertility_tests_cb, 'div[id$="basic-fertility-tests"] div'
        element :previous_fertility_test_submit, '#consult-semen-analysis-submit'
        element :fertility_icon, '#fert > div:nth-child(1) > div:nth-child(1)'
        element :tubal_ligation, '#tubal_ligation'
        element :tubal_ligation_dropdown, 'div.selection:nth-child(4)'
        elements :tubal_ligation_select ,'div.menu:nth-child(4) div'
        element :tubal_ligation_details, '#surgical_history_tubal_ligation_details'
        element :checked_ovulation, '#checked_ovulation > p:nth-child(1)'
        element :checked_ovulation_dropdown, 'div.selection:nth-child(4)'
        elements :checked_ovulation_select, '.transition div'
        element :how_checked_dropdown, 'div.select:nth-child(6)'
        elements :how_checked_select, '.transition div'
        element :ovulation_day_dropdown, 'div.select:nth-child(8)'
        elements :ovulation_day_select, '.transition div'
        element :check_ovulation_desc, '#gynecological_history_how_checked_ovulation_description'

        # past medical
        element :past_medical_button, '#medical-history-patient > div:nth-child(2) > div:nth-child(1) > a:nth-child(2)'
        elements :history_of_conditions_cb, 'div[id$="basic-ailments"] label'
        element :history_of_conditions_save, '#consult-ailments-submit'
        element :past_medical_notes, '#patient_record_patient_exam_attributes_section_notes_medical_history'

        # surgical
        element :add_surgical_button, '#surg > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > a:nth-child(2)'
        element :surgical_month_dropdown, 'div.select:nth-child(1) > label:nth-child(1)'
        elements :surgical_month_select, 'div.transition:nth-child(4) div'
        element :surgical_year_dropdown, '.surgical_history_surgeries_year > label:nth-child(1)'
        elements :surgical_year_select, 'div.transition:nth-child(4) div'
        element :surgical_hospital, '#surgical_history_surgeries_attributes_0_hospital'
        element :surgical_surgeon, '#surgical_history_surgeries_attributes_0_surgeon'
        element :surgical_procedure, '#surgical_history_surgeries_attributes_0_procedure'
        element :surgical_finding, '#surgical_history_surgeries_attributes_0_findings'
        element :surgical_save_button, '#consult-semen-analysis-submit'
        element :surgical_notes, '#patient_record_patient_exam_attributes_section_notes_surgical_history'
        # medication
        element :medication_add_button, '#medication > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > a:nth-child(2)'
        element :medication_name, '#medication_history_medications_attributes_0_name'
        element :medication_diagnosis, '#medication_history_medications_attributes_0_diagnosis'
        element :medication_date_prescribed, '#medication_history_medications_attributes_0_date_prescribed'
        element :medication_route, '#medication_history_medications_attributes_0_route'
        element :medication_dosage_text, '#medication_history_medications_attributes_0_dosage'
        element :medication_dosage_amount_drop, 'div.basic:nth-child(2)'
        elements :medication_dosage_amount_select, 'div.menu:nth-child(4) div'
        element :medication_directions, '#medication_history_medications_attributes_0_directions'
        element :medication_reaction, '#medication_history_medications_attributes_0_reaction'
        element :medication_save, '#consult-semen-analysis-submit'
        element :medication_allergies_add_button, '#medication > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > a:nth-child(2)'
        elements :medication_allergies_cb, '#medication-allergies-modal > div:nth-child(3) label'
        element :medication_save_button, 'input[id$="consult-semen-analysis-submit"]'
        element :medication_notes, '#patient_record_patient_exam_attributes_section_notes_medication_history'
        element :xray_anti_cancer, '#xray_cancer_drugs'
        element :xray_anti_dropdown, 'div.selection:nth-child(4)'
        elements :xray_anti_select, 'div.menu:nth-child(4) div'
        element :xray_text, '#medication_history_xray_cancer_drugs_detail'
        element :xray_medication_logo, '#medication > div:nth-child(1) > div:nth-child(1)'
        # family
        element :family_notes, '#patient_record_patient_exam_attributes_section_notes_family_history'
        element :family_illness, '#fam > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > p:nth-child(1) > a:nth-child(1)'
        elements :family_illness_rb, '.transition label'
        element :family_illness_submit, '#consult-family-illness-submit'
        element :family_icon, '#fam > div:nth-child(1) > div:nth-child(1)'

        element :mothers_age_fertility, '#mother_menopause_age'
        element :mothers_age_fertility_text, '#family_history_mother_menopause_age'
        element :ethnicity, '#ethnicity > div:nth-child(2) > p:nth-child(1) > a:nth-child(1)'
        elements :ethnicity_rb, 'div[class$="field check_boxes_with_details optional family_history_ethnicity"] div'
        element :ethnicity_submit, '#consult-ethnicity-submit'
        element :genetic_screening, '#basic_genetic_screening > span:nth-child(1)'
        element :genetic_screening_dropdown, 'div.selection:nth-child(4)'
        elements :genetic_screening_select, 'div.menu:nth-child(4) div'
        element :genetic_text, '#family_history_basic_genetic_screening_details'
        element :genetic_note, '#patient_record_patient_exam_attributes_section_notes_family_history'
        element :blood_related_to_partner, '#partner_blood_related'
        element :blood_related_to_partner_dropdown, '#consult_edit_form'
        elements :blood_related_to_partner_select, 'div.menu:nth-child(4) div'
        # social
        element :social_notes, '#patient_record_patient_exam_attributes_section_notes_social_history'
        element :occupation, '#occupation'
        element :occupation_text, '#general_info_occupation'
        element :dietary_restriction, '#dietary_restrictions'
        element :dietary_restriction_dropdown, 'div.selection:nth-child(4)'
        elements :dietary_restriction_select, 'div.menu:nth-child(4) div'
        element :dietary_restriction_text, '#social_history_dietary_restrictions_details'
        element :caffeine_option, '#caffeine_use'
        element :caffeine_dropdown, 'div.selection:nth-child(4)'
        elements :caffeine_select, 'div.menu:nth-child(4) div'
        element :coffee_per_day, '#social_history_coffees_per_day'
        element :teas_per_day, '#social_history_teas_per_day'
        element :caffeine_sodas_per_day, '#social_history_caffeinated_sodas_per_day'
        element :social_icon, '#social > div:nth-child(1) > div:nth-child(1)'
        element :exercise, '#exercise_hours_per_week'
        element :exercise_text, '#social_history_exercise_hours_per_week'
        element :alcohol, '#alcohol_use'
        element :alcohol_dropdown, 'div.selection:nth-child(4)'
        elements :alcohol_select, 'div.menu:nth-child(4) div'
        element :exercise_intensity, '#exercise_intensity'
        element :exercise_intensity_text, '#social_history_exercise_intensity'
        element :cigarettes, '#cigarettes_use'
        element :cigarettes_dropdown, 'div.selection:nth-child(4)'
        elements :cigarettes_select, 'div.transition:nth-child(4) div'
        element :exposure, 'span.no-pad-left > a:nth-child(1)'
        elements :exposure_rb, '#consult-exposure-edit > div:nth-child(2) div'
        element :exposure_submit, '#exposure-edit-submit'
        element :social_note, '#patient_record_patient_exam_attributes_section_notes_social_history'
        element :drug, '#drugs_use'
        element :drug_dropdown, 'div.selection:nth-child(4)'
        elements :drug_select, 'div.menu:nth-child(4) div'

        # ros
        element :ros_cb, '.patient_record_patient_exam_ros_all_normal > label:nth-child(3)'
        element :ros_notes, '#patient_record_patient_exam_attributes_section_notes_ros'
        element :medical_history_cb, '.review_medical_history_reviewed > label'
        element :medical_history_submit_button, 'div.gap-top:nth-child(13) > button'
        # exams

        # vitals
        element :vitals_cb, '.patient_record_patient_exam_vitals_recorded_elsewhere > label:nth-child(3)'
        element :blood_pressure_systolic, '#patient_record_patient_exam_attributes_blood_pressure1'
        element :blood_pressure_diastolic, '#patient_record_patient_exam_attributes_blood_pressure2'
        element :vitals_icon, '#vitals > div:nth-child(1) > div:nth-child(1)'
        element :vitals_height, '#height'
        element :vitals_height_feet, '#general_info_height_feet'
        element :vitals_height_inches, '#general_info_height_inches'
        element :vitals_weight, '#weight'
        element :vitals_weight_text, '#general_info_weight'

        # physical
        element :all_normal_cb, '.patient_record_patient_exam_physical_exam_all_normal > label:nth-child(3)'
        element :deferred_cb, '.patient_record_patient_exam_physical_exam_not_performed > label:nth-child(3)'
        element :physical_notes, '#patient_record_patient_exam_attributes_section_notes_physical_exam'

        # pelvic
        element :pelvic_all_normal, '.patient_record_patient_exam_pelvic_exam_all_normal > label:nth-child(3)'
        element :pelvic_deferred, '.patient_record_patient_exam_pelvic_exam_not_performed > label:nth-child(3)'
        element :pelvic_notes, '#patient_record_patient_exam_attributes_section_notes_pelvic_exam'

        # ultrasound
        element :transvagina, '.patient_record_patient_exam_ultrasound_type > div:nth-child(1) > label:nth-child(2)'
        element :transabdominal, '.patient_record_patient_exam_ultrasound_type > div:nth-child(2) > label:nth-child(2)'
        element :ultrasound_all_number, '.patient_record_patient_exam_ultrasound_all_normal > label:nth-child(3)'
        element :ultrasound_deferred, '.patient_record_patient_exam_ultrasound_not_performed > label:nth-child(3)'
        element :right_bafc, '#patient_record_patient_exam_attributes_afc_right'
        element :left_bafc, '#patient_record_patient_exam_attributes_afc_left'
        element :ultrasound_notes, '#patient_record_patient_exam_attributes_section_notes_ultrasound'
        element :exams_next, :xpath, '//*[@id="exams-content"]/div[6]/button[2]'

        # assessment and plan
        element :assessment_text, '#patient_record_patient_exam_attributes_assessment'
        element :plan_text, '#patient_record_patient_exam_attributes_plan'
        elements :old_med_records, 'div.gap-top:nth-child(4) > div:nth-child(1) label'
        elements :counsel_options, 'div.check_boxes_with_single_detail div'
        elements :time_spent_face, 'div[class$="grouped fields radio_buttons optional patient_record_patient_exam_time"] div'
        element :see_dictation, '.patient_record_patient_exam_see_dictation > label:nth-child(3)'
        element :submit, '#submit-consultation'
        element :reviewing_physician, '#patient_record_patient_exam_attributes_conducted_history_and_physical'
        element :modal_submit, 'input.ui'

        def x_ray(xy, xt)
          xray_medication_logo.click
          sleep 1
          xray_anti_cancer.click
          xray_anti_dropdown.click
          sleep 1
          xray_anti_select.each do |xccd|
            xccd.click if xccd.text == xy
          end
          xray_text.set xt
        end

        def gynecological_history(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'lmp'
                lmp.click
                lmp_text.set row[1]
                gynecological_icon.click
                sleep 1
              when 'spot between periods'
                spot_btwn_period.click
                sleep 1
                spot_btwn_period_dropdown.click
                sleep 1
                spot_btwn_period_select.each do |sbp|
                  sbp.click if sbp.text == row[1]
                end
                gynecological_icon.click
                sleep 1
              when 'period length'
                period_length.click
                period_length_text.set row[1]
                gynecological_icon.click
                sleep 1
              when 'period changed over time'
                period_change_over_time.click
                period_change_over_time_dropdown.click
                sleep 1
                period_change_over_time_select.each do |pcot|
                  pcot.click if pcot.text == row[1]
                end
              when 'period change description'
                period_change_description.set row[1]
                gynecological_icon.click
                sleep 1
              when 'menstrual cycle length'
                menstrual_cycle_length.click
                menstrual_cycle_length_text.set row[1]
                gynecological_icon.click
                sleep 1
              when 'painful periods'
                painful_period.click
                sleep 1
                painful_period_dropdown.click
                painful_period_select.each do |pps|
                  pps.click if pps.text == row[1]
                end
              when 'medication for cramps'
                medication_cramps.each do |mc|
                  mc.click if mc.text row[1]
                end
              when 'patient pelvic pain'
                patients_pelvic_cramps.each do |ppp|
                  ppp.click if ppp.text == row[1]
                end
                painful_period_submit_button.click
                gynecological_icon.click
                sleep 1
              when 'irregular periods'
                irregular_period.click
                irregular_period_dropdown.click
                irregular_period_select.each do |ip|
                  ip.click if ip.text == row[1]
                end
                gynecological_icon.click
                sleep 1
              when 'menarche'
                menarche.click
                menarche_text.set row[1]
                gynecological_icon.click
                sleep 2
              when 'dyspareunia'
                dyspareunia.click
                dyspareunia_dropdown.click
                dyspareunia_select.each do |ds|
                  ds.click if ds.text == row[1]
                end
                gynecological_icon.click
                sleep 2
              when 'last pap smear'
                last_pap_smear.click
                last_pap_smear_date.set row[1]
                gynecological_icon.click
                sleep 2
              when 'adult acne'
                adult_acne.click
                sleep 1
                adult_acne_dropdown.click
                for i in adult_acne_select
                  i.click if i.text == row[1]
                end
                gynecological_icon.click
                sleep 1
              when 'abnormal pap results'
                abnormal_pap_results.click
                abnormal_pap_result_dropdown.click
                sleep 1
                abnormal_pap_result_select.each do |apr|
                  apr.click if apr.text == row[1]
                end
              when 'abnormal pap date'
                abnormal_pap_date.set row[1]
              when 'abnormal pap details'
                abnormal_pap_details.set row[1]
                gynecological_icon.click
                sleep 1
              when 'last mammogram date'
                last_mammogram.click
                last_mammogram_date.set row[1]
                gynecological_icon.click
                sleep 1
              when 'last mammogram result'
                last_mammogram.click
                last_mammogram_result.set row[1]
                gynecological_icon.click
                sleep 1
              when 'gynecological disorders'
                gynecological_disorder.click
                sleep 1
                gynecological_disorders_cb.each do |gd|
                  gd.click if gd.text == row[1]
                end
                gynecological_submit.click
                gynecological_icon.click
                sleep 1
              when 'gynecological procedures'
                gynecological_procedures.click
                sleep 1
                gynecological_procedures_cb.each do |gpc|
                  gpc.click if gpc.text == row[1]
                end
                gp_submit.click
                gynecological_icon.click
                sleep 1
            end
          end
        end

        def fertility(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'time trying to conceive'
                time_conceive.click
                time_conceive_text.set row[1]
                fertility_icon.click
                sleep 1
              when 'checked ovulation'
                checked_ovulation.click
                checked_ovulation_dropdown.click
                sleep 1
                checked_ovulation_select.each do |cos|
                  cos.click if cos.text == row[1]
                end
              when 'how checked'
                how_checked_dropdown.click
                how_checked_select.each do |hcs|
                  hcs.click if hcs.text == row[1]
                end
              when 'ovulation day'
                ovulation_day_dropdown.click
                ovulation_day_select.each do |ods|
                  ods.click if ods.text == row[1]
                end
              when 'how checked ovulation description'
                check_ovulation_desc.set row[1]
                fertility_icon.click
                sleep 1
              when 'sexually intimate with partner'
                sexually_intimate.click
                sexually_intimate_dropdown.click
                sexually_intimate_select.each do |sis|
                  sis.click if sis.text == row[1]
                end
                fertility_icon.click
                sleep 1
              when 'intercourse frequency'
                intercourse_frequency.click
                intercourse_frequency_text.set row[1]
                fertility_icon.click
                sleep 1
              when 'ic frequency ovulation'
                intercourse_during_ovulation.click
                ic_frequency_ovulation_text.set row[1]
                fertility_icon.click
                sleep 1
              when 'previous fertility consultation'
                pf_consultation.click
                pf_testing_dropdown.click
                sleep 1
                pf_testing_select.each do |pts|
                  pts.click if pts.text == row[1]
                end
              when 'treatment physician'
                treatment_physician.set row[1]
              when 'treatment diagnosis'
                treatment_diagnosis.set row[1]
              when 'infertility duration'
                infertility_duration.set row[1]
              when 'time unit'
                time_unit_dropdown.click
                time_unit_select.each do |tus|
                  tus.click if tus.text == row[1]
                end
                fertility_icon.click
                sleep 3
              when 'previous testing'
                previous_fertility_tests.click
                previous_fertility_tests_cb.each do |pt|
                  pt.click if pt.text == row[1]
                end
                fertility_icon.click
                sleep 1
                previous_fertility_test_submit.click
                fertility_icon.click
                sleep 1
              when 'tubal ligation'
                tubal_ligation.click
                tubal_ligation_dropdown.click
                tubal_ligation_select.each do |tls|
                  tls.click if tls.text == row[1]
                end
              when 'tubal ligation details'
                tubal_ligation_details.set row[1]
            end
          end
        end

        def family(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'family illnesses'
                family_illness.click
                family_illness_rb.each do |fi|
                  fi.click if fi.text == row[1]
                end
                family_icon.click
                sleep 1
              when 'mothers age of menopause'
                family_icon.click
                sleep 1
                mothers_age_fertility.click
                mothers_age_fertility_text.set row[1]
                family_icon.click
                sleep 1
              when 'ethnicity'
                ethnicity.click
                ethnicity_rb.each do |er|
                  er.click if er.text == row[1]
                end
                ethnicity_submit.click
                family_icon.click
                sleep 1
              when 'blood related to partner'
                blood_related_to_partner.click
                blood_related_to_partner_dropdown.click
                blood_related_to_partner_select.each do |brts|
                  brts.click if brts.text == row[1]
                end
                family_icon.click
                sleep 1
              when 'genetic screening'
                genetic_screening.click
                genetic_screening_dropdown.click
                sleep 1
                genetic_screening_select.each do |gss|
                  gss.click if gss.text == row[1]
                end
              when 'genetic details'
                genetic_text.set row[1]
              when 'genetic note'
                family_icon.click
                sleep 1
                genetic_note.set row[1]
            end
          end
        end

        def add_contraceptive(table)
          add_contraceptive_button.click
          table.raw.each do |row|
            case row[0].downcase
              when 'type'
                contraceptive_type.set row[1]
              when 'year began'
                contraceptive_year_began_dropdown.click
                sleep 1
                contraceptive_year_began_select.each do |yb|
                  yb.click if yb.text == row[1]
                end
              when 'year end'
                contraceptive_year_end_dropdown.click
                sleep 1
                contraceptive_year_end_select.each do |ye|
                  ye.click if ye.text == row[1]
                end
              when 'details'
                contraceptive_details.set row[1]
            end
          end
          contraceptive_save.click
          sleep 3
        end

        def add_pregnancy(table)
          add_pregnancy_button.click
          table.raw.each do |row|
            case row[0].downcase
              when 'ending month'
                pregnancy_ending_month_dropdown.click
                sleep 1
                pregnancy_ending_month_select.each do |pey|
                  pey.click if pey.text == row[1]
                end
              when 'ending year'
                pregnancy_ending_year_dropdown.click
                sleep 1
                pregnancy_ending_year_select.each do |pey|
                  pey.click if pey.text == row[1]
                end
              when 'months to conceive'
                pregnancy_months_to_conceive.set row[1]
                sleep 1
              when 'treatment required to receive'
                pregnancy_treatment_required_to_conceive.each do |trtc|
                  trtc.click if trtc.text == row[1]
                end
                sleep 3
              when 'conceived with'
                pregnancy_conceive_with.each do |cw|
                  cw.click if cw.text == row[1]
                end
                sleep 3
              when 'live birth'
                pregnancy_live_birth.each do |lb|
                  lb.click if lb.text == row[1]
                end
              when 'please explain'
                pregnancy_please_explain_dropdown.click
                pregnancy_please_explain_select.each do |pe|
                  pe.click if pe.text == row[1]
                end
              when 'weeks into pregnancy'
                week_into_pregnancy.set row[1]
              when 'genetic testing performed?'
                genetic_testing_performed_dropdown.click
                sleep 1
                genetic_testing_performed_select.each do |gtp|
                  gtp.click if gtp.text == row[1]
                end
              when 'notes'
                pregnancy_notes.set row[1]
                sleep 2
                pregnancy_save_button.click
              when 'additional notes'
                additional_notes.set row[1]

            end
          end
        end

        def add_blood_tests(adt,note)
          add_blood_test_button.click
          sleep 1
          add_blood_test_select.each do |at|
            at.click if at.text == adt
          end
          add_blood_test_save_button.click
          sleep 1
          add_blood_test_note.set note
          sleep 1
        end

        def non_ivf_history(table)
          non_ivf_history_button.click
          table.raw.each do |row|
            case row[0].downcase
              when 'protocol'
                protocol_dropdown.click
              # protocol_selection.each do |ps|
              #   ps.click if ps.text == row[1]
              #   sleep 3
              # end
              when 'month'
                month_dropdown.select
                month_selection.each do |ms|
                  ms.click if ms.text == row[1]
                end
            end
          end
        end

        def past_medical(table2)
          table2.raw.each do |row|
            case row[0].downcase
              when 'history of conditions'
                history_of_conditions_cb.each do |hoc|
                  hoc.click if hoc.text == row[1]
                end
                history_of_conditions_save.click
                sleep 2
              when 'notes'
                past_medical_notes.set row[1]
                sleep 2
            end
          end
        end

        def surgical_history(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'month'
                surgical_month_dropdown.click
                surgical_month_select.each do |sm|
                  sm.click if sm.text == row[1]
                end
              when 'year'
                surgical_year_dropdown.click
                surgical_year_select.each do |sy|
                  sy.click if sy.text == row[1]
                end
              when 'hospital'
                surgical_hospital.set row[1]
              when 'surgeon'
                surgical_surgeon.set row[1]
              when 'procedure'
                surgical_procedure.set row[1]
              when 'findings'
                surgical_finding.set row[1]
                surgical_save_button.click
                sleep 1
              when 'notes'
                surgical_notes.set row [1]
            end
          end
        end

        def medication(table)
          medication_add_button.click
          table.raw.each do |row|
            case row[0].downcase
              when 'name'
                medication_name.set row[1]
                sleep 1
              when 'diagnosis'
                medication_diagnosis.set row[1]
              when 'date prescribed'
                medication_date_prescribed.click
                medication_date_prescribed.set row[1]
              when 'route'
                medication_route.set row[1]
              when 'dosage'
                medication_dosage_text.set row[1]
                sleep 2
              when 'dosage amt'
                medication_dosage_amount_drop.click
                for i in medication_dosage_amount_select
                  i.click if i.text == row[1]
                end
              when 'directions'
                medication_directions.set row[1]
              when 'reaction'
                medication_reaction.set row[1]
                sleep 2
                medication_save.click
                sleep 2
            end
          end
        end

        def medication_allergy(ma,ms)
          for i in medication_allergies_cb
            i.click if i.text == ma
          end
          medication_save_button.click
          sleep 2
          medication_notes.set(ms)
        end

        def old_medical_records(omd)
          old_med_records.each do |od|
            od.click if od.text == omd
          end
        end

        def counseled_options(co)
          counsel_options.each do |c|
            c.click if c.text == co
          end
        end

        def time_spent_in_minutes(tsip)
          time_spent_face.each do |ts|
            ts.click if ts.text == tsip
          end
        end

        def social(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'occupation'
                occupation.click
                occupation_text.set row[1]
                social_icon.click
                sleep 1
              when 'dietary restrictions'
                dietary_restriction.click
                dietary_restriction_dropdown.click
                dietary_restriction_select.each do |drs|
                  drs.click if drs.text == row[1]
                end
              when 'dietary restrifction details'
                dietary_restriction_text.set row[1]
              when 'caffeine'
                social_icon.click
                sleep 1
                caffeine_option.click
                caffeine_dropdown.click
                sleep 1
                caffeine_select.each do |cs|
                  cs.click if cs.text == row[1]
                end
              when 'coffees per day'
                coffee_per_day.set row[1]
              when 'teas per day'
                teas_per_day.set row[1]
              when 'caffeinated sodas per day'
                caffeine_sodas_per_day.set row[1]
              when 'exercise'
                social_icon.click
                sleep 1
                exercise.click
                exercise_text.set row[1]
              when 'alcohol'
                social_icon.click
                sleep 1
                alcohol.click
                alcohol_dropdown.click
                alcohol_select.each do |as|
                  as.click if as.text == row[1]
                end
              when 'exercise intensity'
                social_icon.click
                sleep 1
                exercise_intensity.click
                exercise_intensity_text.set row[1]
              when 'cigarettes'
                social_icon.click
                sleep 1
                cigarettes.click
                cigarettes_dropdown.click
                cigarettes_select.each do |cs|
                  cs.click if cs.text == row[1]
                end
              when 'exposure'
                social_icon.click
                sleep 1
                exposure.click
                sleep 1
                exposure_rb.each do |er|
                  er.click if er.text == row[1]
                end
                exposure_submit.click
              when 'drugs'
                social_icon.click
                sleep 2
                drug.click
                drug_dropdown.click
                drug_select.each do |ds|
                  ds.click if ds.text == row[1]
                end
              when 'social note'
                social_icon.click
                sleep 1
                social_note.set row[1]
            end
          end
        end

        def vital_data(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'height feet'
                vitals_height.click
                vitals_height_feet.set row[1]
              when 'height inches'
                vitals_height_inches.set row[1]
              when 'weight'
                vitals_icon.click
                sleep 1
                vitals_weight.click
                vitals_weight_text.set row[1]
                vitals_icon.click
            end
          end
        end

      end
    end
  end
end






