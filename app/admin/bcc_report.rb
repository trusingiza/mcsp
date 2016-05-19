ActiveAdmin.register BccReport do

menu priority:3
  # active_admin_importable
  permit_params :sensitization_date, :Venue,:male_fp_rh, :female_fp_rh, :male_mnh, :female_mnh, :male_malaria, :female_malaria 
  form do |f|
      inputs 'Location' do
        input :district
      end
      inputs 'Sensitization Details' do
        input :sensitization_date, label: "Date of Sensitization", order: [:month, :year]
        input :Venue, label: "Sensitization Venue"
      end
      
      inputs 'Number of people reached by RMNCH' do
        input :male_fp_rh, label: "FP/RH Male"
        input :female_fp_rh, label: "FP/RH Female"
        input :male_mnh, label: "MNH Male"
        input :female_mnh, label: "MNH Female"
        input :male_malaria, label: "Malaria Male"
        input :female_malaria, label: "Malaria Female"
      end

            
    actions
  end


end
