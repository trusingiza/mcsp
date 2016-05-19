ActiveAdmin.register FamilyPlanningReport, { :sort_order => :id_asc } do
  menu priority:1
  # active_admin_importable
  
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

  permit_params :report_period, :delivery_1, :delivery_2, :neonantology_male, :neonantology_female, :anc_oral_contraceptive, :anc_injectable, :anc_implants, :anc_iud, :anc_male_condom, :anc_female_condom, :anc_barriers, :anc_cycle_beads, :anc_auto_observation, :anc_tubal_ligation, :anc_vasectomy, :acceptors_1, :acceptors_2, :acceptors_oral_contraceptive, :acceptors_injectable, :acceptors_implants, :acceptors_iud, :acceptors_male_condom, :acceptors_female_condom, :acceptors_other_barriers, :acceptors_cycle_beads, :acceptors_auto_observation, :acceptors_tubal_ligation, :acceptors_vasectomy
  form do |f|
      inputs 'FOSA' do
        input :facility
      end
      inputs 'Period' do
        # input :report_period, label: "Year/Month", order: [:month, :year]
        input :report_period, label: "report period", as: :date_select, discard_day: true, format: "mm-yyyy" 

      end
      
      inputs 'Delivery' do
        input :delivery_1, label: "Number of women Counseled on breastfeeding after delivery"
        input :delivery_2, label: "Number of women who received Oxytocin immediately after delivery"
      end
      inputs 'Neonantology' do
        input :neonantology_male, label: "Number of New born receiving antibiotic treatment Male"
        input :neonantology_female, label: "Number of New born receiving antibiotic treatment Female"
      end
      inputs 'Family Planning In ANC' do
        input :anc_oral_contraceptive, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Oral Contraceptive"
        input :anc_injectable, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Injectible"
        input :anc_implants, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Implants"
        input :anc_iud, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: IUD"
        input :anc_male_condom, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Male Condom"
        input :anc_female_condom, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Female Condom"
        input :anc_barriers, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Other Barriers"
        input :anc_cycle_beads, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Cycle Beads"
        input :anc_auto_observation, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Auto-Observation"
        input :anc_tubal_ligation, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Tubal Ligation"
        input :anc_vasectomy, label: "Number of ANC clients with preferred PPFP method documented on ANC client card: Vasectomy"
      end
      inputs 'Women delivering in MCSP supported HFs who accept a method of FP prior to discharge' do
        input :acceptors_1, label: "Total acceptors of PPFP within 48 hours after delivery" 
        input :acceptors_2, label: "Total acceptors of PPFP beyond 48 hours after delivery up to 12 months after delivery"
      end
      inputs 'Total Users of PPFP BY Method' do
        input :acceptors_oral_contraceptive, label: "Number of PPFP acceptors per method: Oral Contraceptive"
        input :acceptors_injectable, label: "Number of PPFP acceptors per method: Injectible"
        input :acceptors_implants, label: "Number of PPFP acceptors per method: Implants"
        input :acceptors_iud, label: "Number of PPFP acceptors per method: IUD"
        input :acceptors_male_condom, label: "Number of PPFP acceptors per method: Male Condom"
        input :acceptors_female_codom, label: "Number of PPFP acceptors per method: Female Condom"
        input :acceptors_other_barriers, label: "Number of PPFP acceptors per method: Other Barriers"
        input :acceptors_cycle_beads, label: "Number of PPFP acceptors per method: Cycle Beads"
        input :acceptors_auto_observation, label: "Number of PPFP acceptors per method: Auto-Observation"
        input :acceptors_tubal_ligation, label: "Number of PPFP acceptors per method: Tubal Ligation"
        input :acceptors_vasectomy, label: "Number of PPFP acceptors per method: Vasectomy"
      end
    actions
  end

end
