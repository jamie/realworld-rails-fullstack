require 'test_helper'

class SettingsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "not logged in" do
    get settings_path

    assert_response :redirect
    assert_redirected_to home_path
  end

  test "view form" do
    sign_in users(:jamie)
    get settings_path

    assert_response :success
    assert_match "Your Settings", @response.body
  end

  test "submit form" do
    sign_in users(:jamie)
    patch settings_path, params: { user: { bio: 'A New Bio' } }

    assert_response :success
    assert_equal 'A New Bio', users(:jamie).bio
  end
end
