require 'test_helper'

class NumericReadingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:numeric_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create numeric_reading" do
    assert_difference('NumericReading.count') do
      post :create, :numeric_reading => { }
    end

    assert_redirected_to numeric_reading_path(assigns(:numeric_reading))
  end

  test "should show numeric_reading" do
    get :show, :id => numeric_readings(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => numeric_readings(:one).id
    assert_response :success
  end

  test "should update numeric_reading" do
    put :update, :id => numeric_readings(:one).id, :numeric_reading => { }
    assert_redirected_to numeric_reading_path(assigns(:numeric_reading))
  end

  test "should destroy numeric_reading" do
    assert_difference('NumericReading.count', -1) do
      delete :destroy, :id => numeric_readings(:one).id
    end

    assert_redirected_to numeric_readings_path
  end
end
