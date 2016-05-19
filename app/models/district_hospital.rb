class DistrictHospital < ActiveRecord::Base
  belongs_to :district
  has_many :facilities
  has_many :bcc_reports
  has_many :gender_reports


  def name
    self.dh_name   
  end
 
  def self.sup_test
    @sup_total = GenderReport.all.sum(:hf_participated) + GenderReport.all.sum(:hf_targeted) + GenderReport.all.sum(:male_10_14)
  end

end
