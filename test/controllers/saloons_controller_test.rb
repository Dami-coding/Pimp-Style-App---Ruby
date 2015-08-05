require 'test_helper'

class SaloonsControllerTest < ActionController::TestCase
  setup do
    @saloon = saloons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saloons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saloon" do
    assert_difference('Saloon.count') do
      post :create, saloon: { description: @saloon.description, name: @saloon.name, price: @saloon.price, tel_number: @saloon.tel_number }
    end

    assert_redirected_to saloon_path(assigns(:saloon))
  end

  test "should show saloon" do
    get :show, id: @saloon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saloon
    assert_response :success
  end

  test "should update saloon" do
    patch :update, id: @saloon, saloon: { description: @saloon.description, name: @saloon.name, price: @saloon.price, tel_number: @saloon.tel_number }
    assert_redirected_to saloon_path(assigns(:saloon))
  end

  test "should destroy saloon" do
    assert_difference('Saloon.count', -1) do
      delete :destroy, id: @saloon
    end

    assert_redirected_to saloons_path
  end
end
