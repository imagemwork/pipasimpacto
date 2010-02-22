require 'test_helper'

class FactoriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:factories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factory" do
    assert_difference('Factory.count') do
      post :create, :factory => { }
    end

    assert_redirected_to factory_path(assigns(:factory))
  end

  test "should show factory" do
    get :show, :id => factories(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => factories(:one).to_param
    assert_response :success
  end

  test "should update factory" do
    put :update, :id => factories(:one).to_param, :factory => { }
    assert_redirected_to factory_path(assigns(:factory))
  end

  test "should destroy factory" do
    assert_difference('Factory.count', -1) do
      delete :destroy, :id => factories(:one).to_param
    end

    assert_redirected_to factories_path
  end
end
