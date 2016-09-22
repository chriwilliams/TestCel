module Polaris
  module PageObject
    module Pages
      class ClinicMode < SitePrism::Page

        element :office_location_cm_dropdown, 'div.dropdown:nth-child(2)'
        elements :office_location_cm_select, 'div.menu:nth-child(4) div'
        element :next_button, 'input.ui'
        element :password_create, '#patient_password'
        element :password_confirmation, '#patient_password_confirmation'
        element :terms_conditions_content, '.scrollable-textbox > p:nth-child(70) > a'
        # element :terms_link_bottom, '.scrollable-textbox > p a'
        element :terms_conditions_checkbox, 'div.ui:nth-child(1) > label'
        element :create_account_button, 'input.ui'
        element :close_modal_button, '#clinic-mode-modal > i'

        # Selecting a clinic
        # @param clinics [string] a parameter for selecting a certain clinic for the patient
        def clinic_mode_setup(clinics)
          office_location_cm_dropdown.click
          office_location_cm_select.each do |clinic|
            clinic.click if clinic.text == clinics
          end
        end
        # def scroll_down_terms
        #   terms_conditions_content.location_once_scrolled_into_view
        # end
      end
    end
  end
end

