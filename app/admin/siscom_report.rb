ActiveAdmin.register SiscomReport do

menu priority:5
menu parent: 'Standard MOH Reports'
  # active_admin_importable
  permit_params :Periode, :Diarrhea2_59months, :Pneumonia2_59months, :Accouchement_domicile, :Micropostal, :Active_CHWs, :Total_CHWs, :Total_red_alert, :Responce_red_alert, :RDT_positive, :RDT_negative, :Malaria_6_59months_treated_before_24h, :Malaria_6_59months_treated_after_24h 
  form do |f|
      inputs 'Location' do
        input :facility
      end

      inputs 'periode of reporting' do
         input :Periode,label: "periode", order: [:month, :year]
      end

      inputs 'SISCOM DATA in 10 RMNCH Districts' do
        input :Diarrhea2_59months, label: "Community level: Cases seen with diarrhea 2-59 months of age (SISCOM)"
        input :Pneumonia2_59months, label: "Community level: Cases seen with pneumonia 2-59 months of age (SISCOM)"
        input :Accouchement_domicile, label: "Accouchement a domicile (SISCOM)"
        input :Micropostal, label: "Misoprostol dispensed (SISCOM)"
        input :Active_CHWs, label: "Active CHWs (RapidSMS)"
        input :Total_CHWs, label: "Total CHWs (RapidSMS))"
        input :Total_red_alert, label: "Total red alerts sent (RapidSMS): by reason of alert "
        input :Responce_red_alert, label: "Response to red alert (RapidSMS): by reason of alert "
      end
      
      inputs 'SISCOM DATA in 7 iCCM  Districts ' do
          input :RDT_positive, label: "Community level: RDT Carried out positive (SISCOM)"
          input :RDT_negative, label: "Community level: RDT carried out negative (SISCOM)"
          input :Malaria_6_59months_treated_before_24h, label: "Cases 6-59 months with fever/malaria presenting and treated within 24 hours (SISCOM)"
          input :Malaria_6_59months_treated_after_24h , label: "Cases 6-59 months with fever/malaria presenting and treated after 24 hours (SISCOM)"
          
      end

            
    actions
  end


end




