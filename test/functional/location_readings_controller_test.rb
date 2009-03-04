require 'test_helper'

class LocationReadingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_reading" do
    assert_difference('LocationReading.count') do
      post :create, :location_reading => { }
    end

    assert_redirected_to location_reading_path(assigns(:location_reading))
  end

  test "should show location_reading" do
    get :show, :id => location_readings(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => location_readings(:one).id
    assert_response :success
  end

  test "should update location_reading" do
    put :update, :id => location_readings(:one).id, :location_reading => { }
    assert_redirected_to location_reading_path(assigns(:location_reading))
  end

  test "should destroy location_reading" do
    assert_difference('LocationReading.count', -1) do
      delete :destroy, :id => location_readings(:one).id
    end

    assert_redirected_to location_readings_path
  end
end
