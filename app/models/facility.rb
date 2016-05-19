class Facility < ActiveRecord::Base
  has_many :family_planning_reports
  has_many :hmis_reports
  has_many :siscom_reports
  has_many :mopdd_reports
  belongs_to :district_hospital
  
  def name
    self.facility_name   
  end

  def self.sum_test
    @sum_total = FamilyPlanningReport.all.sum(:delivery_1) + GenderReport.all.sum(:admin_cell_targeted)
  end
  

end
