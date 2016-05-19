require 'test_helper'

class BccReportsControllerTest < ActionController::TestCase
  setup do
    @bcc_report = bcc_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bcc_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bcc_report" do
    assert_difference('BccReport.count') do
      post :create, bcc_report: { Venue: @bcc_report.Venue, female_fp_rh: @bcc_report.female_fp_rh, female_malaria: @bcc_report.female_malaria, female_mnh: @bcc_report.female_mnh, male_fp_rh: @bcc_report.male_fp_rh, male_malaria: @bcc_report.male_malaria, male_mnh: @bcc_report.male_mnh, references: @bcc_report.references, sensitization_date: @bcc_report.sensitization_date }
    end

    assert_redirected_to bcc_report_path(assigns(:bcc_report))
  end

  test "should show bcc_report" do
    get :show, id: @bcc_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bcc_report
    assert_response :success
  end

  test "should update bcc_report" do
    patch :update, id: @bcc_report, bcc_report: { Venue: @bcc_report.Venue, female_fp_rh: @bcc_report.female_fp_rh, female_malaria: @bcc_report.female_malaria, female_mnh: @bcc_report.female_mnh, male_fp_rh: @bcc_report.male_fp_rh, male_malaria: @bcc_report.male_malaria, male_mnh: @bcc_report.male_mnh, references: @bcc_report.references, sensitization_date: @bcc_report.sensitization_date }
    assert_redirected_to bcc_report_path(assigns(:bcc_report))
  end

  test "should destroy bcc_report" do
    assert_difference('BccReport.count', -1) do
      delete :destroy, id: @bcc_report
    end

    assert_redirected_to bcc_reports_path
  end
end
