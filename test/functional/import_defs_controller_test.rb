require 'test_helper'

class ImportDefsControllerTest < ActionController::TestCase
  setup do
    @import_def = import_defs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_defs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_def" do
    assert_difference('ImportDef.count') do
      post :create, import_def: @import_def.attributes
    end

    assert_redirected_to import_def_path(assigns(:import_def))
  end

  test "should show import_def" do
    get :show, id: @import_def.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @import_def.to_param
    assert_response :success
  end

  test "should update import_def" do
    put :update, id: @import_def.to_param, import_def: @import_def.attributes
    assert_redirected_to import_def_path(assigns(:import_def))
  end

  test "should destroy import_def" do
    assert_difference('ImportDef.count', -1) do
      delete :destroy, id: @import_def.to_param
    end

    assert_redirected_to import_defs_path
  end
end
