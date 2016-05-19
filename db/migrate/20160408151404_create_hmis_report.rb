class CreateHmisReport < ActiveRecord::Migration
  def change
    create_table :hmis_reports do |t|
      t.date :periode
      t.integer :imci_diarrhea_dehydratation
      t.integer :imci_diarrhea_evident_dehydratation
      t.integer :imci_diarrhea_no_dehydratation
      t.integer :imci_peneumonie
      t.integer :gbv_symptoms_sexual_new_F
      t.integer :gbv_symptoms_sexual_new_M
      t.integer :gbv_symptoms_Physical_new_F
      t.integer :gbv_symptoms_Physical_new_M
      t.integer :anc_new
      t.integer :anc_trim_1_visit
      t.integer :anc_4th__visit
      t.integer :anc_new_fullCource
      t.integer :deliveries_total
      t.integer :deliveries_16_19
      t.integer :deliveries_under_15
      t.integer :births_live
      t.integer :births_live_weight_2_5kg
      t.integer :premature_weight_2_5kg_22_73Weeks
      t.integer :newborns_breastfed_1hour
      t.integer :newborns_not_cry
      t.integer :newborns_not_cry_resuscited
      t.integer :newborns_not_cry_resuscited_successfully
      t.integer :pnc_new
      t.integer :pnc_standard_visit_1_3days
      t.integer :fp_new
      t.integer :fp_active_end_month
      t.integer :iron_sulfate_folic
      t.integer :micropostal
      t.integer :low_birth_weight_KMC
      t.integer :fistula_repair
      t.integer :malaria_confirmed_under_5_F
      t.integer :malaria_confirmed_under_5_M
      t.integer :malaria_confirmed_over_5_F
      t.integer :malaria_confirmed_over_5_M
      t.integer :malaria_conf_minor_digest_sympt_under_5_F
      t.integer :malaria_conf_minor_digest_sympt_under_5_M
      t.integer :malaria_conf_minor_digest_sympt_over_5_F
      t.integer :malaria_conf_minor_digest_sympt_over_5_M
      t.integer :malaria_simple_imci_under_5_F
      t.integer :malaria_simple_imci_under_5_M
      t.integer :malaria_simple_imci_over_5_F
      t.integer :malaria_simple_imci_over_5_M
      t.integer :malaria_simple_pregnancy
      t.integer :malaria_minor_digest_sympt_pregnancy
      t.integer :bloodSmears_plasmodium_positives
      t.integer :rapiddiagnostic_tests_malaria_positives
      t.integer :rapiddiagnostic_tests_malaria_negatives
      t.references :facility, index: true
      

      t.timestamps null: false
    end
      add_foreign_key :hmis_reports, :facilities
  end
end
