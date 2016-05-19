require 'test_helper'

class DistrictHospitalsControllerTest < ActionController::TestCase
  setup do
    @district_hospital = district_hospitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:district_hospitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create district_hospital" do
    assert_difference('DistrictHospital.count') do
      post :create, district_hospital: { name: @district_hospital.name, references: @district_hospital.references }
    end

    assert_redirected_to district_hospital_path(assigns(:district_hospital))
  end

  test "should show district_hospital" do
    get :show, id: @district_hospital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @district_hospital
    assert_response :success
  end

  test "should update district_hospital" do
    patch :update, id: @district_hospital, district_hospital: { name: @district_hospital.name, references: @district_hospital.references }
    assert_redirected_to district_hospital_path(assigns(:district_hospital))
  end

  test "should destroy district_hospital" do
    assert_difference('DistrictHospital.count', -1) do
      delete :destroy, id: @district_hospital
    end

    assert_redirected_to district_hospitals_path
  end
end
