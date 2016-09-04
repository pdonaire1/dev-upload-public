require 'test_helper'

class WebAppsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_app = web_apps(:one)
  end

  test "should get index" do
    get web_apps_url
    assert_response :success
  end

  test "should get new" do
    get new_web_app_url
    assert_response :success
  end

  test "should create web_app" do
    assert_difference('WebApp.count') do
      post web_apps_url, params: { web_app: {  } }
    end

    assert_redirected_to web_app_url(WebApp.last)
  end

  test "should show web_app" do
    get web_app_url(@web_app)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_app_url(@web_app)
    assert_response :success
  end

  test "should update web_app" do
    patch web_app_url(@web_app), params: { web_app: {  } }
    assert_redirected_to web_app_url(@web_app)
  end

  test "should destroy web_app" do
    assert_difference('WebApp.count', -1) do
      delete web_app_url(@web_app)
    end

    assert_redirected_to web_apps_url
  end
end
