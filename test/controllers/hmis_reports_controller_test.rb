require 'test_helper'

class HmisReportsControllerTest < ActionController::TestCase
  setup do
    @hmis_report = hmis_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hmis_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hmis_report" do
    assert_difference('HmisReport.count') do
      post :create, hmis_report: { ANC_4th__visit: @hmis_report.ANC_4th__visit, ANC_new: @hmis_report.ANC_new, ANC_new_fullCource: @hmis_report.ANC_new_fullCource, ANC_trim_1_visit: @hmis_report.ANC_trim_1_visit, Births_live: @hmis_report.Births_live, Births_live_weight_2_5kg: @hmis_report.Births_live_weight_2_5kg, BloodSmears_plasmodium_positives: @hmis_report.BloodSmears_plasmodium_positives, Deliveries_16_19: @hmis_report.Deliveries_16_19, Deliveries_total: @hmis_report.Deliveries_total, Deliveries_under_15: @hmis_report.Deliveries_under_15, FP_active_end_month: @hmis_report.FP_active_end_month, FP_new: @hmis_report.FP_new, Fistula_repair: @hmis_report.Fistula_repair, GBV_symptoms_Physical_new_F: @hmis_report.GBV_symptoms_Physical_new_F, GBV_symptoms_Physical_new_M: @hmis_report.GBV_symptoms_Physical_new_M, GBV_symptoms_sexual_new_F: @hmis_report.GBV_symptoms_sexual_new_F, GBV_symptoms_sexual_new_M: @hmis_report.GBV_symptoms_sexual_new_M, IMCI_Peneumonie: @hmis_report.IMCI_Peneumonie, IMCI_diarrhea_dehydratation: @hmis_report.IMCI_diarrhea_dehydratation, IMCI_diarrhea_evident_dehydratation: @hmis_report.IMCI_diarrhea_evident_dehydratation, IMCI_diarrhea_no_dehydratation: @hmis_report.IMCI_diarrhea_no_dehydratation, Iron_sulfate_folic: @hmis_report.Iron_sulfate_folic, Low_birth_weight_KMC: @hmis_report.Low_birth_weight_KMC, Malaria_conf_minor_digest_sympt_over_5_F: @hmis_report.Malaria_conf_minor_digest_sympt_over_5_F, Malaria_conf_minor_digest_sympt_over_5_M: @hmis_report.Malaria_conf_minor_digest_sympt_over_5_M, Malaria_conf_minor_digest_sympt_under_5_F: @hmis_report.Malaria_conf_minor_digest_sympt_under_5_F, Malaria_conf_minor_digest_sympt_under_5_M: @hmis_report.Malaria_conf_minor_digest_sympt_under_5_M, Malaria_confirmed_over_5_F: @hmis_report.Malaria_confirmed_over_5_F, Malaria_confirmed_over_5_M: @hmis_report.Malaria_confirmed_over_5_M, Malaria_confirmed_under_5_F: @hmis_report.Malaria_confirmed_under_5_F, Malaria_confirmed_under_5_M: @hmis_report.Malaria_confirmed_under_5_M, Malaria_minor_digest_sympt_pregnancy: @hmis_report.Malaria_minor_digest_sympt_pregnancy, Malaria_simple_IMCI_over_5_F: @hmis_report.Malaria_simple_IMCI_over_5_F, Malaria_simple_IMCI_over_5_M: @hmis_report.Malaria_simple_IMCI_over_5_M, Malaria_simple_IMCI_under_5_F: @hmis_report.Malaria_simple_IMCI_under_5_F, Malaria_simple_IMCI_under_5_M: @hmis_report.Malaria_simple_IMCI_under_5_M, Malaria_simple_pregnancy: @hmis_report.Malaria_simple_pregnancy, Micropostal: @hmis_report.Micropostal, Newborns_breastfed_1hour: @hmis_report.Newborns_breastfed_1hour, Newborns_not_cry: @hmis_report.Newborns_not_cry, Newborns_not_cry_resuscited: @hmis_report.Newborns_not_cry_resuscited, Newborns_not_cry_resuscited_successfully: @hmis_report.Newborns_not_cry_resuscited_successfully, PNC_new: @hmis_report.PNC_new, PNC_standard_visit_1_3days: @hmis_report.PNC_standard_visit_1_3days, Premature_weight_2_5kg_22_73Weeks: @hmis_report.Premature_weight_2_5kg_22_73Weeks, RapidDiagnostic_tests_malaria_negatives: @hmis_report.RapidDiagnostic_tests_malaria_negatives, RapidDiagnostic_tests_malaria_positives: @hmis_report.RapidDiagnostic_tests_malaria_positives, periode: @hmis_report.periode, references: @hmis_report.references }
    end

    assert_redirected_to hmis_report_path(assigns(:hmis_report))
  end

  test "should show hmis_report" do
    get :show, id: @hmis_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hmis_report
    assert_response :success
  end

  test "should update hmis_report" do
    patch :update, id: @hmis_report, hmis_report: { ANC_4th__visit: @hmis_report.ANC_4th__visit, ANC_new: @hmis_report.ANC_new, ANC_new_fullCource: @hmis_report.ANC_new_fullCource, ANC_trim_1_visit: @hmis_report.ANC_trim_1_visit, Births_live: @hmis_report.Births_live, Births_live_weight_2_5kg: @hmis_report.Births_live_weight_2_5kg, BloodSmears_plasmodium_positives: @hmis_report.BloodSmears_plasmodium_positives, Deliveries_16_19: @hmis_report.Deliveries_16_19, Deliveries_total: @hmis_report.Deliveries_total, Deliveries_under_15: @hmis_report.Deliveries_under_15, FP_active_end_month: @hmis_report.FP_active_end_month, FP_new: @hmis_report.FP_new, Fistula_repair: @hmis_report.Fistula_repair, GBV_symptoms_Physical_new_F: @hmis_report.GBV_symptoms_Physical_new_F, GBV_symptoms_Physical_new_M: @hmis_report.GBV_symptoms_Physical_new_M, GBV_symptoms_sexual_new_F: @hmis_report.GBV_symptoms_sexual_new_F, GBV_symptoms_sexual_new_M: @hmis_report.GBV_symptoms_sexual_new_M, IMCI_Peneumonie: @hmis_report.IMCI_Peneumonie, IMCI_diarrhea_dehydratation: @hmis_report.IMCI_diarrhea_dehydratation, IMCI_diarrhea_evident_dehydratation: @hmis_report.IMCI_diarrhea_evident_dehydratation, IMCI_diarrhea_no_dehydratation: @hmis_report.IMCI_diarrhea_no_dehydratation, Iron_sulfate_folic: @hmis_report.Iron_sulfate_folic, Low_birth_weight_KMC: @hmis_report.Low_birth_weight_KMC, Malaria_conf_minor_digest_sympt_over_5_F: @hmis_report.Malaria_conf_minor_digest_sympt_over_5_F, Malaria_conf_minor_digest_sympt_over_5_M: @hmis_report.Malaria_conf_minor_digest_sympt_over_5_M, Malaria_conf_minor_digest_sympt_under_5_F: @hmis_report.Malaria_conf_minor_digest_sympt_under_5_F, Malaria_conf_minor_digest_sympt_under_5_M: @hmis_report.Malaria_conf_minor_digest_sympt_under_5_M, Malaria_confirmed_over_5_F: @hmis_report.Malaria_confirmed_over_5_F, Malaria_confirmed_over_5_M: @hmis_report.Malaria_confirmed_over_5_M, Malaria_confirmed_under_5_F: @hmis_report.Malaria_confirmed_under_5_F, Malaria_confirmed_under_5_M: @hmis_report.Malaria_confirmed_under_5_M, Malaria_minor_digest_sympt_pregnancy: @hmis_report.Malaria_minor_digest_sympt_pregnancy, Malaria_simple_IMCI_over_5_F: @hmis_report.Malaria_simple_IMCI_over_5_F, Malaria_simple_IMCI_over_5_M: @hmis_report.Malaria_simple_IMCI_over_5_M, Malaria_simple_IMCI_under_5_F: @hmis_report.Malaria_simple_IMCI_under_5_F, Malaria_simple_IMCI_under_5_M: @hmis_report.Malaria_simple_IMCI_under_5_M, Malaria_simple_pregnancy: @hmis_report.Malaria_simple_pregnancy, Micropostal: @hmis_report.Micropostal, Newborns_breastfed_1hour: @hmis_report.Newborns_breastfed_1hour, Newborns_not_cry: @hmis_report.Newborns_not_cry, Newborns_not_cry_resuscited: @hmis_report.Newborns_not_cry_resuscited, Newborns_not_cry_resuscited_successfully: @hmis_report.Newborns_not_cry_resuscited_successfully, PNC_new: @hmis_report.PNC_new, PNC_standard_visit_1_3days: @hmis_report.PNC_standard_visit_1_3days, Premature_weight_2_5kg_22_73Weeks: @hmis_report.Premature_weight_2_5kg_22_73Weeks, RapidDiagnostic_tests_malaria_negatives: @hmis_report.RapidDiagnostic_tests_malaria_negatives, RapidDiagnostic_tests_malaria_positives: @hmis_report.RapidDiagnostic_tests_malaria_positives, periode: @hmis_report.periode, references: @hmis_report.references }
    assert_redirected_to hmis_report_path(assigns(:hmis_report))
  end

  test "should destroy hmis_report" do
    assert_difference('HmisReport.count', -1) do
      delete :destroy, id: @hmis_report
    end

    assert_redirected_to hmis_reports_path
  end
end
