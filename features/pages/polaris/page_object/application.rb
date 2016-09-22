module Polaris
  module PageObject
    class Application
      def initialize
        @pages = {}
      end

      def add_patient
        @pages[:add_patient] ||= Polaris::PageObject::Pages::AddPatient.new
      end

      def login_home_page
        @pages[:login_home_page] ||= Polaris::PageObject::Pages::LoginHomePage.new
      end

      def patient_index
        @pages[:patient_index] ||= Polaris::PageObject::Pages::PatientIndex.new
      end

      def clinic_mode
        @pages[:clinic_mode] ||= Polaris::PageObject::Pages::ClinicMode.new
      end

       def appointment
         @pages[:appointment] ||= Polaris::PageObject::Pages::Appointment.new
       end

      def intake
        @pages[:intake] ||= Polaris::PageObject::Pages::Intake.new
      end

      def consult
        @pages[:consult] ||= Polaris::PageObject::Pages::Consult.new
      end

      def treatment_navigator
        @pages[:treatment_navigator] ||= Polaris::PageObject::Pages::TreatmentNavigator.new
      end

      def base_page
        @pages[:base_page] ||= Polaris::PageObject::Pages::BasePage.new
      end

    end
  end
end


