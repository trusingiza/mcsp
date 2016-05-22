class Training < ActiveRecord::Base

  def self.chn_doc_male
    @chndm = Training.where("qualification = 'Doctors' AND gender = 'M' AND technical_area = 'Child H. & Nutrition'").count
  end

  def self.chn_doc_female
    @chndf = Training.where("qualification = 'Doctors' AND gender = 'F' AND technical_area = 'Child H. & Nutrition'").count
  end

  def self.chn_nurse_male
    @chnnm = Training.where("qualification = 'Nurses' AND gender = 'M' AND technical_area = 'Child H. & Nutrition'").count
  end

  def self.chn_nurse_female
    @chnnf = Training.where("qualification = 'Nurses' AND gender = 'F' AND technical_area = 'Child H. & Nutrition'").count
  end

  def self.chn_Midwife_male

    @chnmidwm = Training.where("qualification = 'Midwives' AND gender = 'M' AND technical_area = 'Child H. & Nutrition'").count
  end


  def self.chn_Midwife_female

    @chnmidwf = Training.where("qualification = 'Midwives' AND gender = 'F' AND technical_area = 'Child H. & Nutrition'").count
  end

   def self.chn_chw_male

    @chnchwm= Training.where("qualification = 'Community Health Workers' AND gender = 'M' AND technical_area = 'Child H. & Nutrition'").count
  end

  def self.chn_chw_female

    @chnchwf= Training.where("qualification = 'Community Health Workers' AND gender = 'F' AND technical_area = 'Child H. & Nutrition'").count
  end

   def self.chn_chvol_male

    @chnchvolm= Training.where("qualification = 'Community Health Volunteers' AND gender = 'M' AND technical_area = 'Child H. & Nutrition'").count
  end

  def self.chn_chvol_female

    @chnchvolf= Training.where("qualification = 'Community Health Volunteers' AND gender = 'F' AND technical_area = 'Child H. & Nutrition'").count
  end

  def self.chn_nohp_male

    @chnnonhpm= Training.where("qualification = 'Non-health Personnel' AND gender = 'M' AND technical_area = 'Child H. & Nutrition'").count
  end

   def self.chn_nohp_female

    @chnnonhpf= Training.where("qualification = 'Non-health Personnel' AND gender = 'F' AND technical_area = 'Child H. & Nutrition'").count
  end

 #  Immunization 
 # ***************************************************************************************************************************

  
  def self.imm_doc_male
    @immdm = Training.where("qualification = 'Doctors' AND gender = 'M' AND technical_area = 'Immunization'").count
  end

  def self.imm_doc_female
    @immdf = Training.where("qualification = 'Doctors' AND gender = 'F' AND technical_area = 'Immunization'").count
  end

  def self.imm_nurse_male
    @immnm = Training.where("qualification = 'Nurses' AND gender = 'M' AND technical_area = 'Immunization'").count
  end

  def self.imm_nurse_female
    @immnf = Training.where("qualification = 'Nurses' AND gender = 'F' AND technical_area = 'Immunization'").count
  end

  def self.imm_Midwife_male

    @immmidwm = Training.where("qualification = 'Midwives' AND gender = 'M' AND technical_area = 'Immunization'").count
  end


  def self.imm_Midwife_female

    @immmidwf = Training.where("qualification = 'Midwives' AND gender = 'F' AND technical_area = 'Immunization'").count
  end

   def self.imm_chw_male

    @immchwm= Training.where("qualification = 'Community Health Workers' AND gender = 'M' AND technical_area = 'Immunization'").count
  end

  def self.imm_chw_female

    @immchwf= Training.where("qualification = 'Community Health Workers' AND gender = 'F' AND technical_area = 'Immunization'").count
  end

   def self.imm_chvol_male

    @immchvolm= Training.where("qualification = 'Community Health Volunteers' AND gender = 'M' AND technical_area = 'Immunization'").count
  end

  def self.imm_chvol_female

    @immchvolf= Training.where("qualification = 'Community Health Volunteers' AND gender = 'F' AND technical_area = 'Immunization'").count
  end

  def self.imm_nohp_male

    @immnonhpm= Training.where("qualification = 'Non-health Personnel' AND gender = 'M' AND technical_area = 'Immunization'").count
  end

   def self.imm_nohp_female

    @immnonhpf= Training.where("qualification = 'Non-health Personnel' AND gender = 'F' AND technical_area = 'Immunization'").count
  end




end
