require 'test_helper'

class FamilyPlanningReportsControllerTest < ActionController::TestCase
  setup do
    @family_planning_report = family_planning_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:family_planning_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create family_planning_report" do
    assert_difference('FamilyPlanningReport.count') do
      post :create, family_planning_report: { acceptors_1: @family_planning_report.acceptors_1, acceptors_2: @family_planning_report.acceptors_2, acceptors_auto_observation: @family_planning_report.acceptors_auto_observation, acceptors_cycle_beads: @family_planning_report.acceptors_cycle_beads, acceptors_female: @family_planning_report.acceptors_female, acceptors_implants: @family_planning_report.acceptors_implants, acceptors_injectable: @family_planning_report.acceptors_injectable, acceptors_iud: @family_planning_report.acceptors_iud, acceptors_male_condom: @family_planning_report.acceptors_male_condom, acceptors_oral_contraceptive: @family_planning_report.acceptors_oral_contraceptive, acceptors_other_barriers: @family_planning_report.acceptors_other_barriers, acceptors_tubal_ligation: @family_planning_report.acceptors_tubal_ligation, acceptors_vasectomy: @family_planning_report.acceptors_vasectomy, anc_auto_observation: @family_planning_report.anc_auto_observation, anc_barriers: @family_planning_report.anc_barriers, anc_cycle_beads: @family_planning_report.anc_cycle_beads, anc_female_condom: @family_planning_report.anc_female_condom, anc_implants: @family_planning_report.anc_implants, anc_injectable: @family_planning_report.anc_injectable, anc_iud: @family_planning_report.anc_iud, anc_male_condom: @family_planning_report.anc_male_condom, anc_oral_contraceptive: @family_planning_report.anc_oral_contraceptive, anc_tubal_ligation: @family_planning_report.anc_tubal_ligation, anc_vasectomy: @family_planning_report.anc_vasectomy, condom: @family_planning_report.condom, delivery_1: @family_planning_report.delivery_1, delivery_2: @family_planning_report.delivery_2, neonantology_female: @family_planning_report.neonantology_female, neonantology_male: @family_planning_report.neonantology_male, references: @family_planning_report.references, report_period: @family_planning_report.report_period }
    end

    assert_redirected_to family_planning_report_path(assigns(:family_planning_report))
  end

  test "should show family_planning_report" do
    get :show, id: @family_planning_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @family_planning_report
    assert_response :success
  end

  test "should update family_planning_report" do
    patch :update, id: @family_planning_report, family_planning_report: { acceptors_1: @family_planning_report.acceptors_1, acceptors_2: @family_planning_report.acceptors_2, acceptors_auto_observation: @family_planning_report.acceptors_auto_observation, acceptors_cycle_beads: @family_planning_report.acceptors_cycle_beads, acceptors_female: @family_planning_report.acceptors_female, acceptors_implants: @family_planning_report.acceptors_implants, acceptors_injectable: @family_planning_report.acceptors_injectable, acceptors_iud: @family_planning_report.acceptors_iud, acceptors_male_condom: @family_planning_report.acceptors_male_condom, acceptors_oral_contraceptive: @family_planning_report.acceptors_oral_contraceptive, acceptors_other_barriers: @family_planning_report.acceptors_other_barriers, acceptors_tubal_ligation: @family_planning_report.acceptors_tubal_ligation, acceptors_vasectomy: @family_planning_report.acceptors_vasectomy, anc_auto_observation: @family_planning_report.anc_auto_observation, anc_barriers: @family_planning_report.anc_barriers, anc_cycle_beads: @family_planning_report.anc_cycle_beads, anc_female_condom: @family_planning_report.anc_female_condom, anc_implants: @family_planning_report.anc_implants, anc_injectable: @family_planning_report.anc_injectable, anc_iud: @family_planning_report.anc_iud, anc_male_condom: @family_planning_report.anc_male_condom, anc_oral_contraceptive: @family_planning_report.anc_oral_contraceptive, anc_tubal_ligation: @family_planning_report.anc_tubal_ligation, anc_vasectomy: @family_planning_report.anc_vasectomy, condom: @family_planning_report.condom, delivery_1: @family_planning_report.delivery_1, delivery_2: @family_planning_report.delivery_2, neonantology_female: @family_planning_report.neonantology_female, neonantology_male: @family_planning_report.neonantology_male, references: @family_planning_report.references, report_period: @family_planning_report.report_period }
    assert_redirected_to family_planning_report_path(assigns(:family_planning_report))
  end

  test "should destroy family_planning_report" do
    assert_difference('FamilyPlanningReport.count', -1) do
      delete :destroy, id: @family_planning_report
    end

    assert_redirected_to family_planning_reports_path
  end
end
