require 'test_helper'

class StatussheetsControllerTest < ActionController::TestCase
  setup do
    @statussheet = statussheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statussheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statussheet" do
    assert_difference('Statussheet.count') do
      post :create, statussheet: { character_id: @statussheet.character_id, curhp: @statussheet.curhp, initiative: @statussheet.initiative, maxhp: @statussheet.maxhp, nonlthdmg: @statussheet.nonlthdmg, speed: @statussheet.speed }
    end

    assert_redirected_to statussheet_path(assigns(:statussheet))
  end

  test "should show statussheet" do
    get :show, id: @statussheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statussheet
    assert_response :success
  end

  test "should update statussheet" do
    patch :update, id: @statussheet, statussheet: { character_id: @statussheet.character_id, curhp: @statussheet.curhp, initiative: @statussheet.initiative, maxhp: @statussheet.maxhp, nonlthdmg: @statussheet.nonlthdmg, speed: @statussheet.speed }
    assert_redirected_to statussheet_path(assigns(:statussheet))
  end

  test "should destroy statussheet" do
    assert_difference('Statussheet.count', -1) do
      delete :destroy, id: @statussheet
    end

    assert_redirected_to statussheets_path
  end
end
