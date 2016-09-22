module Polaris
  module PageObject
    module Pages

      class TreatmentNavigator < SitePrism::Page

        # required
        element :height, 'input[id$="report_input_height"]'
        element :weight, 'input[id$="report_input_weight"]'
        element :bmi, 'input[id$="report_input_bmi"]'
        element :gravidity, 'input[id$="report_input_gravidity"]'
        element :parity, 'input[id$="report_input_parity"]'
        element :time_trying_to_conceive, 'input[id$="report_input_attempted_conception_time"]'
        element :miscarriage, 'input[id$="report_input_miscarriages"]'
        element :ectopic_pregnancies, 'input[id$="report_input_ectopic_pregnancies"]'
        element :abortion, 'input[id="report_input_num_abortions"]'
        element :required_save_button, 'input[type$="submit"]'

        # sidebar
        element :diagnostic, 'a[href$="/reports/patient_records/IYKSNO/diagnostic/edit"]'
        #element :diagnostic, :xpath, '//*[@id="polaris-app"]/div[4]/div/div/a[2]'


        # diagnosis
        element :day3_fsh, 'input[id$="report_input_fsh"]'
        element :day3_e2, 'input[id$="report_input_e2"]'
        element :day3_lh, 'input[id$="report_input_lh"]'
        element :amh, 'input[id$="report_input_amh"]'
        element :bafc, 'input[id$="report_input_bafc"]'



        def required(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'height'
                height.set row[1]
              when 'weight'
                weight.set row[1]
              when 'bmi'
                bmi.set row[1]
              when 'gravidity'
                gravidity.set row[1]
              when 'parity'
                parity.set row[1]
              when 'time trying to conceive'
                time_trying_to_conceive.set row[1]
              when 'miscarriage'
                miscarriage.set row[1]
              when 'ectopic pregnancies'
                ectopic_pregnancies.set row[1]
              when 'abortion'
                abortion.set row[1]
                sleep 2
                required_save_button.click

            end
          end
        end

        def diagnostic_metrics(table)
          table.raw.each do |row|
            case row[0].downcase
              when 'day 3 FSH'
                day3_fsh. set row[1]
              when 'day 3 E2'
                day3_e2.set row[1]
              when 'day 3 LH'
                day3_lh.set row[1]
              when 'day amh'
                amh.set row[1]
              when 'bafc'
                bafc.set row[1]



            end
          end
        end

        def alerts
          driver.switchTo.alert.accept
        end
      end
    end
  end
end
