ActiveAdmin.register MopddReport do

menu priority:5
menu parent: 'Standard MOH Reports'
####START IMPORT####
  active_admin_import validate: false,
  headers_rewrites: { :'Fosa' => :facility_id,  },
  before_batch_import: ->(importer) {
    fosa_names = importer.values_at(:facility_id)
    # replacing fosa name with facility id
    facilities   = Facility.where(facility_name: fosa_names).pluck(:facility_name, :id)
    options = Hash[*facilities.flatten] # #{"Jane" => 2, "John" => 1}
    importer.batch_replace(:facility_id, options)
  }
# #####END IMPORT######
  # active_admin_importable
  permit_params :periode, :malaria_confirmed, :malaria_confirmed_notified, :malaria_index_investigated
  form do |f|
      inputs 'Location' do
        input :facility
      end
      inputs 'Reporting Periode  ' do
        input :periode, label: "Reporting Periode", order: [:month, :year]
       
      end
      
      inputs 'Data element in Malaria Pre- Elimination Database' do
        input :malaria_confirmed, label: "Number of malaria cases confirmed  (by HF and district)"
        input :malaria_confirmed_notified, label: "Number of malaria cases confirmed and notified (by HF and district)"
        input :malaria_index_investigated, label: "Number of malaria index cases investigated (by HF and district)"
       
      end
            
    actions
  end

end
