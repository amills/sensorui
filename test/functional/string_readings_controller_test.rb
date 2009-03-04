require 'test_helper'

class StringReadingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:string_readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create string_reading" do
    assert_difference('StringReading.count') do
      post :create, :string_reading => { }
    end

    assert_redirected_to string_reading_path(assigns(:string_reading))
  end

  test "should show string_reading" do
    get :show, :id => string_readings(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => string_readings(:one).id
    assert_response :success
  end

  test "should update string_reading" do
    put :update, :id => string_readings(:one).id, :string_reading => { }
    assert_redirected_to string_reading_path(assigns(:string_reading))
  end

  test "should destroy string_reading" do
    assert_difference('StringReading.count', -1) do
      delete :destroy, :id => string_readings(:one).id
    end

    assert_redirected_to string_readings_path
  end
end
