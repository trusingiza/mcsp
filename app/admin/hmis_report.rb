ActiveAdmin.register HmisReport do

menu priority:3
menu parent: 'Standard MOH Reports'
# ######START IMPORT####
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
  permit_params  :periode, :IMCI_diarrhea_dehydratation, :IMCI_diarrhea_evident_dehydratation, :IMCI_diarrhea_no_dehydratation, :IMCI_Peneumonie, :GBV_symptoms_sexual_new_F, :GBV_symptoms_sexual_new_M, :GBV_symptoms_Physical_new_F, :GBV_symptoms_Physical_new_M, :ANC_new, :ANC_trim_1_visit, :ANC_4th__visit, :ANC_new_fullCource, :Deliveries_total, :Deliveries_16_19, :Deliveries_under_15, :Births_live, :Births_live_weight_2_5kg, :Premature_weight_2_5kg_22_73Weeks, :Newborns_breastfed_1hour, :Newborns_not_cry, :Newborns_not_cry_resuscited, :Newborns_not_cry_resuscited_successfully, :PNC_new, :PNC_standard_visit_1_3days, :FP_new, :FP_active_end_month, :Iron_sulfate_folic, :Micropostal, :Low_birth_weight_KMC, :Fistula_repair, :Malaria_confirmed_under_5_F, :Malaria_confirmed_under_5_M, :Malaria_confirmed_over_5_F, :Malaria_confirmed_over_5_M, :Malaria_conf_minor_digest_sympt_under_5_F, :Malaria_conf_minor_digest_sympt_under_5_M, :Malaria_conf_minor_digest_sympt_over_5_F, :Malaria_conf_minor_digest_sympt_over_5_M, :Malaria_simple_IMCI_under_5_F, :Malaria_simple_IMCI_under_5_M, :Malaria_simple_IMCI_over_5_F, :Malaria_simple_IMCI_over_5_M, :Malaria_simple_pregnancy, :Malaria_minor_digest_sympt_pregnancy, :BloodSmears_plasmodium_positives, :RapidDiagnostic_tests_malaria_positives, :RapidDiagnostic_tests_malaria_negatives, :references
  form do |f|
        inputs 'FOSA' do
        input :facility
      end
      
      inputs 'periode of reporting' do
         input :periode,label: "periode", order: [:month, :year]
      end
      inputs 'Data element in DHIS2' do
        input :imci_diarrhea_dehydratation, label: "Facility level: IMCI diarrhea with severe dehydration"
        input :imci_diarrhea_evident_dehydratation, label: "Facility level: IMCI Diarrhea with evident signs of dehydration"
        input :imci_diarrhea_no_dehydratation, label: "Facility level: IMCI Diarrhea no dehydration"
        input :imci_peneumonie, label: "Facility level: IMCI Pneumonia"
      end
      
      inputs 'Gender Based Violence' do
        input :GBV_symptoms_sexual_new_F, label: "GBV victims with symptoms of sexual violence (new cases) Female"
        input :GBV_symptoms_sexual_new_M, label: "GBV victims with symptoms of sexual violence (new cases) Male"
        input :GBV_symptoms_Physical_new_F, label: "GBV victims with symptoms of physical violence (new cases)Female"
        input :GBV_symptoms_Physical_new_M, label: "GBV victims with symptoms of physical violence (new cases)Male"
        
      end 

      inputs 'Antenatal consultations' do
        input :ANC_new, label: "ANC New Registrations"
        input :ANC_trim_1_visit, label: "ANC First standard visit 1st trimester"
        input :ANC_4th__visit, label: "ANC 4th standard visit"
        input :ANC_new_fullCource, label: "ANC new registrations who received full course of Iron and Folic Acid supplements (90 tablets)"
       
      end

        inputs 'Deliveries at health facility' do
        input :Deliveries_total, label: "Deliveries, total"
        input :Deliveries_16_19, label: "Deliveries 16 to 19 years"
        input :Deliveries_under_15, label: " Deliveries under 15"
        input :Births_live, label: "Births, live"
        input :Births_live_weight_2_5kg, label: "Birth weight <2.5 kg (alive, not premature)"
        input :Premature_weight_2_5kg_22_73Weeks, label: "Premature birth weight <2.5 kg (alive, 22-37 weeks"
        input :Newborns_breastfed_1hour, label: "Newborns breastfed within 1 hour of delivery"
        input :Newborns_not_cry, label: "Newborns who didn’t cry at birth"
        input :Newborns_not_cry_resuscited, label: "Newborns who didn’t cry at birth and were resuscitated"
        input :Newborns_not_cry_resuscited_successfully, label: "Newborns who didn’t cry at birth and were resuscitated successfully (cry within 5 minutes)"
              
      end  

      inputs 'Postnatal Care' do
        input :PNC_new, label: "PNC new registrations"
        input :PNC_standard_visit_1_3days, label: "PNC standard visit 1 within 3 days of birth"
               
      end  

      inputs 'Family Planning' do
        input :FP_new, label: "FP new acceptors (by method)"
        input :FP_active_end_month, label: "FP Active users at the end of month (by method)"
                      
      end  

      inputs 'Stock of tracer drugs' do
        input :Iron_sulfate_folic, label: "Iron sulfate+Folic Acid tab 200mg/0.25mg (Quantity dispensed)"
        input :Micropostal, label: "Misoprostol (Quantity dispensed)"
                      
      end


      inputs 'Hospital level only' do
        input :Low_birth_weight_KMC, label: "Low birth weight babies admitted in KMC"
        input :Fistula_repair, label: "Fistula repair  "
                      
      end  

      inputs 'Malaria data in Malaria prone districts' do
        input :Malaria_confirmed_under_5_F, label: "Malaria confirmed simple(not pregnant)out-patient <5 Female"
        input :Malaria_confirmed_under_5_M, label: " Malaria confirmed simple(not pregnant)out-patient <5 Male "
        input :Malaria_confirmed_over_5_F, label: "Malaria confirmed simple(not pregnant)out-patient >5 Female"
        input :Malaria_confirmed_over_5_M, label: " Malaria confirmed simple(not pregnant)out-patient >5 Male "
        input :Malaria_conf_minor_digest_sympt_under_5_F, label: "Malaria confirmed with minor digestive symptoms (not pregnant): out patient < 5 Female"
        input :Malaria_conf_minor_digest_sympt_under_5_M, label: " Malaria confirmed with minor digestive symptoms (not pregnant): out patient < 5 Male "
        input :Malaria_conf_minor_digest_sympt_over_5_F, label: "Malaria confirmed with minor digestive symptoms (not pregnant): out patient >5 Female"
        input :Malaria_conf_minor_digest_sympt_over_5_M, label: " Malaria confirmed with minor digestive symptoms (not pregnant): out patient >5 Male "
        input :Malaria_simple_IMCI_under_5_F, label: "Malaria simple (confirmed) Facility IMCI <5 Female"
        input :Malaria_simple_IMCI_under_5_M, label: "  Malaria simple (confirmed) Facility IMCI <5 Male"
        input :Malaria_simple_IMCI_over_5_F, label: "Malaria simple (confirmed) Facility IMCI >5 Female"
        input :Malaria_simple_IMCI_over_5_M, label: " Malaria simple (confirmed) Facility IMCI >5 Male "
        input :Malaria_simple_pregnancy, label: "Malaria simple in pregnancy (Obstetric complication OPD new cases)"
        input :Malaria_minor_digest_sympt_pregnancy, label: " Malaria with minor digestive symptoms in pregnancy (Obstetric complication OPD new cases) "
        input :BloodSmears_plasmodium_positives, label: "Blood Smears: Plasmodium Positives"
        input :RapidDiagnostic_tests_malaria_positives, label: "Rapid Diagnostic Tests for Malaria: Positives "
        input :RapidDiagnostic_tests_malaria_negatives, label: "Rapid Diagnostic Tests for Malaria: Negatives"
        
      end 
            
    actions
  end


end
