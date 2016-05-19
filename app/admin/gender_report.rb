ActiveAdmin.register GenderReport do
menu priority:2
  # active_admin_importable
   # ######START IMPORT####
  active_admin_import validate: false,
  headers_rewrites: { :'district_hospital' => :district_hospital_id,  },
  before_batch_import: ->(importer) {
    district_hospital_name = importer.values_at(:district_hospital_id)
    # replacing fosa name with facility id
    district_hospitals   = DistrictHospital.where(district_hospital_name: District_names).pluck(:district_hospital_name, :id)
    options = Hash[*districts.flatten] # #{"Jane" => 2, "John" => 1}
    importer.batch_replace(:district_hospital_id, options)
  }
# #####END IMPORT######
  


  
  permit_params :meeting_date, :meeting_venue, :hf_targeted, :hf_participated, :admin_sector_targeted, :admin_sector_participated, :admin_cell_targeted, :admin_cell_participated, :male_10_14, :female_10_14, :male_15_19, :female_15_19, :male_20_24, :female_20_24, :male_25_29, :female_25_29, :male_30_49, :female_30_49, :male_50_above, :female_50_above
  form do |f|
      inputs 'Location' do
        input :district_hospital
      end
      inputs 'Meeting Details' do
        input :meeting_date, label: "Date of Meeting", order: [:month, :year]
        input :meeting_venue, label: "Meeting Venue"
      end
      
      inputs 'Information on participants to Gender meeting' do
        input :hf_targeted, label: "HF  management committee Targeted"
        input :hf_participated, label: "HF  management committee Participed"
        input :admin_sector_targeted, label: "Administrative sector targeted"
        input :admin_sector_participated, label: "Administrative sector participed"
        input :admin_cell_targeted, label: "Administrative cell targeted"
        input :admin_cell_participated, label: "Administrative cell participed"
      end

      inputs 'Information on participants to Gender meeting per Sex and Age group' do
        input :male_10_14, label: "10-14 years male"
        input :female_10_14, label: "10-14 years female"
        input :male_15_19, label: "15-19 years male"
        input :female_15_19, label: "15-19 years female"
        input :male_20_24, label: "20-24 years male"
        input :female_20_24, label: "20-24 years female"
        input :male_25_29, label: "25-29 years male"
        input :female_25_29, label: "25-29 years female"
        input :male_30_49, label: "30-49 years male"
        input :female_30_49, label: "30-49 years female"
        input :male_50_above, label: "50 and abave male"
        input :female_50_above, label: "50 and abave female"
      end

      
    actions
  end

end
