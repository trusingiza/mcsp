require 'test_helper'

class GenderReportsControllerTest < ActionController::TestCase
  setup do
    @gender_report = gender_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gender_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gender_report" do
    assert_difference('GenderReport.count') do
      post :create, gender_report: { admin_cell_participated: @gender_report.admin_cell_participated, admin_cell_targeted: @gender_report.admin_cell_targeted, admin_sector_participated: @gender_report.admin_sector_participated, admin_sector_targeted: @gender_report.admin_sector_targeted, female_10_14: @gender_report.female_10_14, female_15_19: @gender_report.female_15_19, female_20_24: @gender_report.female_20_24, female_25_29: @gender_report.female_25_29, female_30_49: @gender_report.female_30_49, female_50_above: @gender_report.female_50_above, hf_participated: @gender_report.hf_participated, hf_targeted: @gender_report.hf_targeted, male_10_14: @gender_report.male_10_14, male_15_19: @gender_report.male_15_19, male_20_24: @gender_report.male_20_24, male_25_29: @gender_report.male_25_29, male_30_49: @gender_report.male_30_49, male_50_above: @gender_report.male_50_above, meeting_date: @gender_report.meeting_date, meeting_venue: @gender_report.meeting_venue, references: @gender_report.references }
    end

    assert_redirected_to gender_report_path(assigns(:gender_report))
  end

  test "should show gender_report" do
    get :show, id: @gender_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gender_report
    assert_response :success
  end

  test "should update gender_report" do
    patch :update, id: @gender_report, gender_report: { admin_cell_participated: @gender_report.admin_cell_participated, admin_cell_targeted: @gender_report.admin_cell_targeted, admin_sector_participated: @gender_report.admin_sector_participated, admin_sector_targeted: @gender_report.admin_sector_targeted, female_10_14: @gender_report.female_10_14, female_15_19: @gender_report.female_15_19, female_20_24: @gender_report.female_20_24, female_25_29: @gender_report.female_25_29, female_30_49: @gender_report.female_30_49, female_50_above: @gender_report.female_50_above, hf_participated: @gender_report.hf_participated, hf_targeted: @gender_report.hf_targeted, male_10_14: @gender_report.male_10_14, male_15_19: @gender_report.male_15_19, male_20_24: @gender_report.male_20_24, male_25_29: @gender_report.male_25_29, male_30_49: @gender_report.male_30_49, male_50_above: @gender_report.male_50_above, meeting_date: @gender_report.meeting_date, meeting_venue: @gender_report.meeting_venue, references: @gender_report.references }
    assert_redirected_to gender_report_path(assigns(:gender_report))
  end

  test "should destroy gender_report" do
    assert_difference('GenderReport.count', -1) do
      delete :destroy, id: @gender_report
    end

    assert_redirected_to gender_reports_path
  end
end
