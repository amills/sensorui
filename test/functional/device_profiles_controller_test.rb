require 'test_helper'

class DeviceProfilesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:device_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device_profile" do
    assert_difference('DeviceProfile.count') do
      post :create, :device_profile => { }
    end

    assert_redirected_to device_profile_path(assigns(:device_profile))
  end

  test "should show device_profile" do
    get :show, :id => device_profiles(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => device_profiles(:one).id
    assert_response :success
  end

  test "should update device_profile" do
    put :update, :id => device_profiles(:one).id, :device_profile => { }
    assert_redirected_to device_profile_path(assigns(:device_profile))
  end

  test "should destroy device_profile" do
    assert_difference('DeviceProfile.count', -1) do
      delete :destroy, :id => device_profiles(:one).id
    end

    assert_redirected_to device_profiles_path
  end
end
