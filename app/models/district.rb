class District < ActiveRecord::Base
  belongs_to :province
  has_many :district_hospitals
  has_many :gender_reports
  has_many :bcc_reports



  
end
