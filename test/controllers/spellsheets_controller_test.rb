require 'test_helper'

class SpellsheetsControllerTest < ActionController::TestCase
  setup do
    @spellsheet = spellsheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spellsheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spellsheet" do
    assert_difference('Spellsheet.count') do
      post :create, spellsheet: { character_id: @spellsheet.character_id }
    end

    assert_redirected_to spellsheet_path(assigns(:spellsheet))
  end

  test "should show spellsheet" do
    get :show, id: @spellsheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spellsheet
    assert_response :success
  end

  test "should update spellsheet" do
    patch :update, id: @spellsheet, spellsheet: { character_id: @spellsheet.character_id }
    assert_redirected_to spellsheet_path(assigns(:spellsheet))
  end

  test "should destroy spellsheet" do
    assert_difference('Spellsheet.count', -1) do
      delete :destroy, id: @spellsheet
    end

    assert_redirected_to spellsheets_path
  end
end
