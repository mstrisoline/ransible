require 'test_helper'

class HostVarsControllerTest < ActionController::TestCase
  setup do
    @host_var = host_vars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:host_vars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create host_var" do
    assert_difference('HostVar.count') do
      post :create, host_var: {  }
    end

    assert_redirected_to host_var_path(assigns(:host_var))
  end

  test "should show host_var" do
    get :show, id: @host_var
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @host_var
    assert_response :success
  end

  test "should update host_var" do
    patch :update, id: @host_var, host_var: {  }
    assert_redirected_to host_var_path(assigns(:host_var))
  end

  test "should destroy host_var" do
    assert_difference('HostVar.count', -1) do
      delete :destroy, id: @host_var
    end

    assert_redirected_to host_vars_path
  end
end
