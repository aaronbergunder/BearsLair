require 'test_helper'

class InfosheetsControllerTest < ActionController::TestCase
  setup do
    @infosheet = infosheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infosheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create infosheet" do
    assert_difference('Infosheet.count') do
      post :create, infosheet: {  }
    end

    assert_redirected_to infosheet_path(assigns(:infosheet))
  end

  test "should show infosheet" do
    get :show, id: @infosheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @infosheet
    assert_response :success
  end

  test "should update infosheet" do
    patch :update, id: @infosheet, infosheet: {  }
    assert_redirected_to infosheet_path(assigns(:infosheet))
  end

  test "should destroy infosheet" do
    assert_difference('Infosheet.count', -1) do
      delete :destroy, id: @infosheet
    end

    assert_redirected_to infosheets_path
  end
end
