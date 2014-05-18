require 'test_helper'

class StartupProfilesControllerTest < ActionController::TestCase
  setup do
    @startup_profile = startup_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:startup_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create startup_profile" do
    assert_difference('StartupProfile.count') do
      post :create, startup_profile: { address: @startup_profile.address, country: @startup_profile.country, name: @startup_profile.name, postcode: @startup_profile.postcode, state: @startup_profile.state, suburb: @startup_profile.suburb }
    end

    assert_redirected_to startup_profile_path(assigns(:startup_profile))
  end

  test "should show startup_profile" do
    get :show, id: @startup_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @startup_profile
    assert_response :success
  end

  test "should update startup_profile" do
    patch :update, id: @startup_profile, startup_profile: { address: @startup_profile.address, country: @startup_profile.country, name: @startup_profile.name, postcode: @startup_profile.postcode, state: @startup_profile.state, suburb: @startup_profile.suburb }
    assert_redirected_to startup_profile_path(assigns(:startup_profile))
  end

  test "should destroy startup_profile" do
    assert_difference('StartupProfile.count', -1) do
      delete :destroy, id: @startup_profile
    end

    assert_redirected_to startup_profiles_path
  end
end
