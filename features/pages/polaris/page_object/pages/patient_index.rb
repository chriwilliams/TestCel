module Polaris
  module PageObject
    module Pages

      class PatientIndex < SitePrism::Page

        section :patient_index_table, BasePage, '#DataTables_Table_0'

        element :physician_dropdown, :xpath, '//*[@id="filter"]/div[2]/div/form/div/div[2]/div[1]/div[1]/div[1]'
        elements :physician_select, 'div.transition:nth-child(5) div'
        element :appointment_dropdown, :xpath, '//*[@id="filter"]/div[2]/div/form/div/div[2]/div[1]/div[2]/div[1]/div[1]'
        elements :appointment_selection, '.transition div'
        element :office_location_dropdown, :xpath, '//*[@id="filter"]/div[2]/div/form/div/div[2]/div[1]/div[3]/div[1]/div[1]'
        elements :office_location_selection, '.transition div'
        element :intake_submission_status_dropdown, :xpath, '//*[@id="filter"]/div[2]/div/form/div/div[2]/div[2]/div[1]/div[1]/div[1]'
        elements :intake_submission_status_select, 'div.visible:nth-child(5) div'
        element :visibility_status_dropdown, :xpath, '//*[@id="filter"]/div[2]/div/form/div/div[2]/div[2]/div[2]/div[1]/div[1]'
        elements :visibility_status_select, '.transition div'
        element :outstanding_action_items_dropdown, :xpath, '//*[@id="filter"]/div[2]/div/form/div/div[2]/div[2]/div[3]/div[1]/div[1]'
        element :start_date, 'input[name$="appointmentStart"]'
        element :end_date, 'input[name$="appointmentEnd"]'
        element :toggle_all, 'div[class$="ui multi checkbox"]'
        element :batch_actions, 'a[class$="ui button cmx-add gap-top batch-button"]'
        elements :document_export_checkbox, 'div.gap-top:nth-child(1) input'
        elements :document_export_labels, 'div.gap-top:nth-child(1) label'
        element :next_button, 'modal,div.button:nth-child(2)'
        elements :exports, '.grouped label'
        element :submit, 'input.ui:nth-child(2)'
        element :patient_index_search, '#DataTables_Table_0_filter > label:nth-child(1) > input:nth-child(1)'
        element :settings_icon, '.cmx-icon'
        elements :setting_select, '.transition a'
        element :edit_patient_text, '.section-heading > div'
        # elements :all_rows, '#DataTables_Table_0 > thead:nth-child(1) > tr:nth-child(1) thp'
        # elements :all_warning_rows, 'DataTables_Table_0'



        # Filter patients depending on certain criteria
        # @param options_table3 [table] table for filling out the patient index.
        def patient_index(options_table3)
          options_table3.raw.each do |row|
            case row[0].downcase
              when 'physician'
                physician_dropdown.click
                physician_select.each do |pn|
                  pn.click if pn.text == row[1]
                end
              when 'appointment'
                appointment_dropdown.click
                appointment_selection.each do |pd|
                  pd.click if pd.text ==row[1]
                end
              when 'start date'
                start_date.set row[1]
              when 'end date'
                end_date.set row[1]
                sleep 1
              when 'office location'
                office_location_dropdown.click
                office_location_selection.each do |ol|
                  ol.click if ol.text ==row[1]
                end
              when 'intake submission status'
                intake_submission_status_dropdown.click
                sleep 1
                intake_submission_status_select.each do |is|
                  is.click if is.text ==row[1]
                  sleep 1
                end
              when 'visibility status'
                visibility_status_dropdown.click
                visibility_status_select.each do |is|
                  is.click if is.text ==row[1]
                  sleep 1
                end
              when 'outstanding action items'
            end
          end
        end

        # Method for exporting specific documents for patients
        # @param doc_name[string] name of the type of doc to export
        # @param export_type[string] name of the type of export wanted
        def select_batch_actions(doc_name, export_type)
          document_export_labels.each do |at|
            at.click if at.text == doc_name
            sleep 2
          end
          next_button.click
          exports.each do |export|
            export.click if export.text == export_type
            sleep 1
          end
        end

        #REVISIT
       # Method for selecting an option within settings dropdown
       # @param settings_type[string] selection within the settings menu
        def settings_selection(settings_type)
          settings_icon.click
          setting_select.each do |setting|
            setting.click if setting.text == settings_type
          end
        end


          # #Gets value of the specified field on EDC forms.
        # #@param label [string] label
        # def get_field_value(label)
        #   field_detect(label)
        #   data_field = @field.all(:css, 'td[class="celmatix-table ui basic table striped dataTable no-footer"]').first
        #   data_field.text
        # end
        #
        #
        # # Detects field label on a Rave EDC form
        # # @param label [string] the field name
        # def field_detect(label)
        #   if all_rows.find { |item| item.text.include? label }
        #     @field = all_rows.find { |item| item.text.include? label }
        #   elsif all_warning_rows.find { |item| item.text.include? label }
        #     @field = all_warning_rows.find { |item| item.text.include? label }
        #   end
        #
        #   raise "Field '#{label}' was not found on form." unless @field
        # end
    end
  end
  end
  end