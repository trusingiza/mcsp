require 'test_helper'

class TrainingsControllerTest < ActionController::TestCase
  setup do
    @training = trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training" do
    assert_difference('Training.count') do
      post :create, training: { date_of_post_training_follow_up: @training.date_of_post_training_follow_up, duration_days: @training.duration_days, email: @training.email, enddate: @training.enddate, gender: @training.gender, location: @training.location, name_surname: @training.name_surname, organizer: @training.organizer, place_of_work: @training.place_of_work, position: @training.position, post_test: @training.post_test, pre_test: @training.pre_test, provenance_district: @training.provenance_district, qualification: @training.qualification, startdate: @training.startdate, technical_area: @training.technical_area, telephone: @training.telephone, type_name_of_training: @training.type_name_of_training }
    end

    assert_redirected_to training_path(assigns(:training))
  end

  test "should show training" do
    get :show, id: @training
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @training
    assert_response :success
  end

  test "should update training" do
    patch :update, id: @training, training: { date_of_post_training_follow_up: @training.date_of_post_training_follow_up, duration_days: @training.duration_days, email: @training.email, enddate: @training.enddate, gender: @training.gender, location: @training.location, name_surname: @training.name_surname, organizer: @training.organizer, place_of_work: @training.place_of_work, position: @training.position, post_test: @training.post_test, pre_test: @training.pre_test, provenance_district: @training.provenance_district, qualification: @training.qualification, startdate: @training.startdate, technical_area: @training.technical_area, telephone: @training.telephone, type_name_of_training: @training.type_name_of_training }
    assert_redirected_to training_path(assigns(:training))
  end

  test "should destroy training" do
    assert_difference('Training.count', -1) do
      delete :destroy, id: @training
    end

    assert_redirected_to trainings_path
  end
end
