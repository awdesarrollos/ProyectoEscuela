require 'test_helper'

class MaestrosControllerTest < ActionController::TestCase
  setup do
    @maestro = maestros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maestros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maestro" do
    assert_difference('Maestro.count') do
      post :create, maestro: @maestro.attributes
    end

    assert_redirected_to maestro_path(assigns(:maestro))
  end

  test "should show maestro" do
    get :show, id: @maestro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maestro
    assert_response :success
  end

  test "should update maestro" do
    put :update, id: @maestro, maestro: @maestro.attributes
    assert_redirected_to maestro_path(assigns(:maestro))
  end

  test "should destroy maestro" do
    assert_difference('Maestro.count', -1) do
      delete :destroy, id: @maestro
    end

    assert_redirected_to maestros_path
  end
end
