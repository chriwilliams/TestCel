 def load_home_page
    polaris_home_page.load
  end

  def load_add_patient
    add_patient.load
  end

  def patient_index_page
    polaris_home_page.patient_index.click
  end

  def add_patient_page
    polaris_home_page.add_patient.click
  end

  def clinic_mode_page
    polaris_home_page.clinic_mode.click
  end

  def intake_page
    polaris_home_page.intake.click
  end

  def consult_page
    polaris_home_page.consult.click
  end

  def treatment_navigator
    polaris_home_page.treatment_navigator.click
  end