require 'test_helper'

class CarrierwaveClientsControllerTest < ActionController::TestCase
  setup do
    @carrierwave_client = carrierwave_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carrierwave_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carrierwave_client" do
    assert_difference('CarrierwaveClient.count') do
      post :create, :carrierwave_client => @carrierwave_client.attributes
    end

    assert_redirected_to carrierwave_client_path(assigns(:carrierwave_client))
  end

  test "should show carrierwave_client" do
    get :show, :id => @carrierwave_client.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @carrierwave_client.to_param
    assert_response :success
  end

  test "should update carrierwave_client" do
    put :update, :id => @carrierwave_client.to_param, :carrierwave_client => @carrierwave_client.attributes
    assert_redirected_to carrierwave_client_path(assigns(:carrierwave_client))
  end

  test "should destroy carrierwave_client" do
    assert_difference('CarrierwaveClient.count', -1) do
      delete :destroy, :id => @carrierwave_client.to_param
    end

    assert_redirected_to carrierwave_clients_path
  end
end
