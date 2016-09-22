module Polaris
  module PageObject
    module Pages

      class LoginHomePage < SitePrism::Page

        set_url "/"
        set_url_matcher /#{Capybara.app_host}\/?/

        # login
        element :forgot_password, 'a[class$="signin-link"]' #button
        element :email_1, 'input[id$="user_email"]' #field
        element :password_1, 'input[id$="user_password"]' #field
        element :submit, 'input.ui' #button
        # homepage
        element :polaris_logo, '.logo-container :nth-child(1)' #logo
        element :date_of_birth, 'input[id$="search_date_of_birth"]' #field
        element :patient_name, 'input[id$="search_name"]' #field
        element :search_button, 'button.ui' #button
        element :exact_match, '#exact-search' #checkbox
        # logout
        element :config_dropdown, 'div.selection:nth-child(1)' #dropdown
        elements :config_select, '.transition a' #collection
        # sub headers
        element :treatment_navigator, '.cmx-subheader > a:nth-child(5)' #tab
        elements :active_header, 'a[class="item active"]' #tab
        element :home_subheader, '.cmx-subheader > a:nth-child(1)' #tab
        element :patient_index, '.items > a:nth-child(2)' #tab
        element :add_patient, '.items > a:nth-child(3)' #tab
        element :clinic_mode, 'a.item:nth-child(4)' #tab
        element :profile, '.cmx-subheader > a:nth-child(2)' #tab
        element :intake, '.cmx-subheader > a:nth-child(3)' #tab
        element :consult, 'a.item:nth-child(4)' #tab
        # side bar tab
        # consult
        element :basic_info, '.no-sub' #tab
        element :medical_history, 'div.tab-section:nth-child(2)' #tab
        element :partner, 'div.item:nth-child(4)' #tab
        element :exams, 'div.item:nth-child(6)' #tab
        element :assessment, :xpath, '//*[@id="intake-app"]/div[4]/div/div/div[6]/span' #tab
        element :version_history, :xpath, '//*[@id="intake-app"]/div[4]/div/div/a' #tab
        # intake
        element :demographics, :xpath, '//*[@id="intake-app"]/div[4]/div/a[1]/span'
        element :insurance, :xpath, '//*[@id="intake-app"]/div[4]/div/a[2]/span'
        element :medical_history, :xpath, '//*[@id="intake-app"]/div[4]/div/div[1]'
        # profile
        element :documents, :xpath, '//*[@id="umbrella-app"]/div[4]/div/a[2]'
        element :basic_info_profile, :xpath, '//*[@id="umbrella-app"]/div[4]/div/a[2]'

        # Logs in a user to the Polaris app
        # @param email [string] email of the user
        # @param password [string] password of the user.
        def login_polaris(email,password)
          email_1.set(email)
          sleep 1
          password_1.set(password)
          sleep 1
          submit.click
        end

        # Searched for a specific patient on the Polaris homepage
        # @param dob [string] date of birth of the patient
        # @param name [string] name of the patient
        def search_patient(name,dob)
          exact_match.click
          sleep 2
          date_of_birth.click
          date_of_birth.set(dob)
          sleep 1
          patient_name.set(name)
          search_button.click
        end

        # Logs a user out of the Polaris application
        def logout_polaris
          config_dropdown.click
          config_select.each do |logout|
            logout.click if logout.text == 'Sign Out'
          end
        end
      end
    end
  end
end