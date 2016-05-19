require 'test_helper'

class MopddReportsControllerTest < ActionController::TestCase
  setup do
    @mopdd_report = mopdd_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mopdd_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mopdd_report" do
    assert_difference('MopddReport.count') do
      post :create, mopdd_report: { malaria_confirmed: @mopdd_report.malaria_confirmed, malaria_confirmed_notified: @mopdd_report.malaria_confirmed_notified, malaria_index_investigated: @mopdd_report.malaria_index_investigated, periode: @mopdd_report.periode }
    end

    assert_redirected_to mopdd_report_path(assigns(:mopdd_report))
  end

  test "should show mopdd_report" do
    get :show, id: @mopdd_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mopdd_report
    assert_response :success
  end

  test "should update mopdd_report" do
    patch :update, id: @mopdd_report, mopdd_report: { malaria_confirmed: @mopdd_report.malaria_confirmed, malaria_confirmed_notified: @mopdd_report.malaria_confirmed_notified, malaria_index_investigated: @mopdd_report.malaria_index_investigated, periode: @mopdd_report.periode }
    assert_redirected_to mopdd_report_path(assigns(:mopdd_report))
  end

  test "should destroy mopdd_report" do
    assert_difference('MopddReport.count', -1) do
      delete :destroy, id: @mopdd_report
    end

    assert_redirected_to mopdd_reports_path
  end
end
