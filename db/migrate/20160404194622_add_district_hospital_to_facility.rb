class AddDistrictHospitalToFacility < ActiveRecord::Migration
  def change
    add_reference :facilities, :district_hospital, index: true
    add_foreign_key :facilities, :district_hospitals
  end
end
