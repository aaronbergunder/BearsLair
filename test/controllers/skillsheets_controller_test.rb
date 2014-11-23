require 'test_helper'

class SkillsheetsControllerTest < ActionController::TestCase
  setup do
    @skillsheet = skillsheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skillsheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skillsheet" do
    assert_difference('Skillsheet.count') do
      post :create, skillsheet: { character_id: @skillsheet.character_id }
    end

    assert_redirected_to skillsheet_path(assigns(:skillsheet))
  end

  test "should show skillsheet" do
    get :show, id: @skillsheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skillsheet
    assert_response :success
  end

  test "should update skillsheet" do
    patch :update, id: @skillsheet, skillsheet: { character_id: @skillsheet.character_id }
    assert_redirected_to skillsheet_path(assigns(:skillsheet))
  end

  test "should destroy skillsheet" do
    assert_difference('Skillsheet.count', -1) do
      delete :destroy, id: @skillsheet
    end

    assert_redirected_to skillsheets_path
  end
end
