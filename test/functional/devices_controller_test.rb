require 'test_helper'

class DevicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post :create, :device => { }
    end

    assert_redirected_to device_path(assigns(:device))
  end

  test "should show device" do
    get :show, :id => devices(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => devices(:one).id
    assert_response :success
  end

  test "should update device" do
    put :update, :id => devices(:one).id, :device => { }
    assert_redirected_to device_path(assigns(:device))
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete :destroy, :id => devices(:one).id
    end

    assert_redirected_to devices_path
  end
end
