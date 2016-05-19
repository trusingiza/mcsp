require 'test_helper'

class SiscomReportsControllerTest < ActionController::TestCase
  setup do
    @siscom_report = siscom_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siscom_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siscom_report" do
    assert_difference('SiscomReport.count') do
      post :create, siscom_report: { Accouchement_domicile: @siscom_report.Accouchement_domicile, Active_CHWs: @siscom_report.Active_CHWs, Diarrhea2_59months: @siscom_report.Diarrhea2_59months, Malaria_6_59months_treated_after_24h: @siscom_report.Malaria_6_59months_treated_after_24h, Malaria_6_59months_treated_before_24h: @siscom_report.Malaria_6_59months_treated_before_24h, Micropostal: @siscom_report.Micropostal, Periode: @siscom_report.Periode, Pneumonia2_59months: @siscom_report.Pneumonia2_59months, RDT_negative: @siscom_report.RDT_negative, RDT_positive: @siscom_report.RDT_positive, Responce_red_alert: @siscom_report.Responce_red_alert, Total_CHWs: @siscom_report.Total_CHWs, Total_red_alert: @siscom_report.Total_red_alert }
    end

    assert_redirected_to siscom_report_path(assigns(:siscom_report))
  end

  test "should show siscom_report" do
    get :show, id: @siscom_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siscom_report
    assert_response :success
  end

  test "should update siscom_report" do
    patch :update, id: @siscom_report, siscom_report: { Accouchement_domicile: @siscom_report.Accouchement_domicile, Active_CHWs: @siscom_report.Active_CHWs, Diarrhea2_59months: @siscom_report.Diarrhea2_59months, Malaria_6_59months_treated_after_24h: @siscom_report.Malaria_6_59months_treated_after_24h, Malaria_6_59months_treated_before_24h: @siscom_report.Malaria_6_59months_treated_before_24h, Micropostal: @siscom_report.Micropostal, Periode: @siscom_report.Periode, Pneumonia2_59months: @siscom_report.Pneumonia2_59months, RDT_negative: @siscom_report.RDT_negative, RDT_positive: @siscom_report.RDT_positive, Responce_red_alert: @siscom_report.Responce_red_alert, Total_CHWs: @siscom_report.Total_CHWs, Total_red_alert: @siscom_report.Total_red_alert }
    assert_redirected_to siscom_report_path(assigns(:siscom_report))
  end

  test "should destroy siscom_report" do
    assert_difference('SiscomReport.count', -1) do
      delete :destroy, id: @siscom_report
    end

    assert_redirected_to siscom_reports_path
  end
end
