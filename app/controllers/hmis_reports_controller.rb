class HmisReportsController < InheritedResources::Base

  private

    def hmis_report_params
      params.require(:hmis_report).permit(:periode, :IMCI_diarrhea_dehydratation, :IMCI_diarrhea_evident_dehydratation, :IMCI_diarrhea_no_dehydratation, :IMCI_Peneumonie, :GBV_symptoms_sexual_new_F, :GBV_symptoms_sexual_new_M, :GBV_symptoms_Physical_new_F, :GBV_symptoms_Physical_new_M, :ANC_new, :ANC_trim_1_visit, :ANC_4th__visit, :ANC_new_fullCource, :Deliveries_total, :Deliveries_16_19, :Deliveries_under_15, :Births_live, :Births_live_weight_2_5kg, :Premature_weight_2_5kg_22_73Weeks, :Newborns_breastfed_1hour, :Newborns_not_cry, :Newborns_not_cry_resuscited, :Newborns_not_cry_resuscited_successfully, :PNC_new, :PNC_standard_visit_1_3days, :FP_new, :FP_active_end_month, :Iron_sulfate_folic, :Micropostal, :Low_birth_weight_KMC, :Fistula_repair, :Malaria_confirmed_under_5_F, :Malaria_confirmed_under_5_M, :Malaria_confirmed_over_5_F, :Malaria_confirmed_over_5_M, :Malaria_conf_minor_digest_sympt_under_5_F, :Malaria_conf_minor_digest_sympt_under_5_M, :Malaria_conf_minor_digest_sympt_over_5_F, :Malaria_conf_minor_digest_sympt_over_5_M, :Malaria_simple_IMCI_under_5_F, :Malaria_simple_IMCI_under_5_M, :Malaria_simple_IMCI_over_5_F, :Malaria_simple_IMCI_over_5_M, :Malaria_simple_pregnancy, :Malaria_minor_digest_sympt_pregnancy, :BloodSmears_plasmodium_positives, :RapidDiagnostic_tests_malaria_positives, :RapidDiagnostic_tests_malaria_negatives, :references)
    end
end

