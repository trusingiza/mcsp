ActiveAdmin.register Training do



menu priority:5
  # active_admin_importable

   active_admin_import validate: false

  permit_params :location, :organizer, :startdate, :enddate, :name_surname, :gender, :provenance_district, :place_of_work, :position, :qualification, :telephone, :email, :duration_days, :type_name_of_training, :pre_test,:post_test, :date_of_post_training_follow_up, :technical_area

  form do |f|
      inputs 'Location' do
        input :location
      end

      inputs 'Organizer' do
        input :organizer
     
      end
      inputs 'Periode' do
        input :startdate, label: "Start_date"
        input :enddate, label: "End_date"
      end
      
      inputs 'Biodata' do
        input :name_surname, label: "Name & Surname"
        input :gender, label: "Gender"
        input :provenance_district, label: "District"
        input :place_of_work, label: "Place of Work"
        input :position, label: "Job Description"
        input :qualification, label: "Qualification"
        input :telephone, label: "Telephone"
        input :email, label: "E-mail"
      end

       inputs 'Training details' do
        input :duration_days, label: "Duration_days"
        input :type_name_of_training, label: "Type of Training"
        input :pre_test, label: "Pre test Result"
        input :post_test, label: "Post test Result"
        input :date_of_post_training_follow_up, label: "Date of post training follow_up"
        input :technical_area, label: "Technical_area"
        
      end

            
    actions
  end


end
