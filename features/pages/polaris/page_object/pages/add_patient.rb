#require_relative '../base_page'

module Polaris
  module PageObject
    module Pages
      class AddPatient < SitePrism::Page

        # add patient
        element :first_name, 'input[id$="patient_record_first_name"]' #field
        element :last_name, 'input[id$="patient_record_last_name"]' #field
        element :email, 'input[id$="patient_record_patient_email"]' #field
        element :dob, 'input[id$="patient_record_date_of_birth"]' #field
        element :add_patient_tab, '.items > a:nth-child(3)' # tab
        element :gender_dropdown, '.patient_record_gender > div:nth-child(2) > i:nth-child(2)' #dropdown
        element :ref_physician, '#patient_record_referring_physician' #field
        element :add_patient_submit, '#add-patient' #button
        elements :gender_select, '.menu.transition.visible div' #dropdown
        element :physician_dropdown, '.patient_record_physician > label:nth-child(1)' #dropdown
        elements :physician_select, '.transition div' #collection
        element :office_location_dropdown, '.patient_record_office_location > div:nth-child(2)' #dropdown
        elements :office_select, '.transition div' #collection
        element :yes_continue_button, '#no-emr-id' #button
        element :clinic_mode_email, 'input[id$="patient_record_email"]' #field
        element :clinic_mode_physician_dropdown, '.patient_record_physician_id > div:nth-child(2)' #dropdown
        element :submit, '#add-patient' #button
        # add patient partner
        element :continue_to_add_partner, '#add-patient-partner' #button
        element :partner_information_dropdown, 'div.optional:nth-child(2) > i:nth-child(2)' #dropdown
        elements :partner_info_select, '.transition div' #collection
        element :add_partner_button, 'input[name$="commit"]' #button
        element :add_partner_button_standalone, 'div.card:nth-child(1) > div:nth-child(2) > div:nth-child(1) > a:nth-child(2)'
        element :edit_partner_button, 'div.card:nth-child(2) > div:nth-child(1) > a:nth-child(1)'
        # delete patient
        element :edit_button, 'div.card:nth-child(1) > div:nth-child(1) > a:nth-child(1)' #button
        element :delete_patient, 'a[class$="ui basic button red"]' #button
        element :delete_confirm_button, '#delete-record-conf' #button
        element :no_match_alert, '.alert-text > p:nth-child(2)' #text


        # Table for creating a patient
        # @param options_table [table] table to fill out the add patient fields
        def create_patient_table(options_table)
          options_table.raw.each do |row|
            case row[0].downcase
              when 'first name'
                first_name.set row[1]
              when 'last name'
                last_name.set row[1]
              when 'email'
                sleep 1
                email.set row[1]
              when 'date of birth'
                sleep 3
                dob.click
                dob.set row[1]
                sleep 1
              when 'ref physician'
                ref_physician.set row[1]
              when 'gender'
                gender_dropdown.click
                sleep 2
                gender_select.each do |gen|
                  gen.click if gen.text == row[1]
                end
              when 'physician'
                physician_dropdown.click
                physician_select.each do |phy|
                  phy.click if phy.text == row[1]
                end
              when 'office location'
                office_location_dropdown.click
                office_select.each do |ol|
                  ol.click if ol.text == row[1]
                end
              when 'clinic_mode_email'
                clinic_mode_email.set row[1]
              when 'clinic_mode_physician'
                clinic_mode_physician_dropdown.click
                physician_select.each do |phy|
                  phy.click if phy.text == row[1]
                end

              else
                raise "Option #{row[0]} is not a valid argument"
            end
          end
        end

        # Table for creating a patient's partner
        # @param options_table2 [table] table to fill out the add partner fields
        def create_add_partner_table(options_table2)
          options_table2.raw.each do |row|
            case row[0].downcase
              when 'first name'
                first_name.set row[1]
              when 'last name'
                last_name.set row[1]
              when 'email'
                sleep 1
                email.set row[1]
              when 'date of birth'
                sleep 3
                dob.click
                dob.set row[1]
                sleep 1
              when 'gender'
                gender_dropdown.click
                sleep 2
                gender_select.each do |gen|
                  gen.click if gen.text == row[1]
                end
              when 'partner info'
                sleep 2
                partner_information_dropdown.click
                partiner_info_select.each do |pi|
                  pi.click if pi.text == row[1]
                end
            end
          end
        end
      end
    end
  end
end
