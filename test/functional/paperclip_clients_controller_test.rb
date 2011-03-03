require 'test_helper'

class PaperclipClientsControllerTest < ActionController::TestCase
  setup do
    @paperclip_client = paperclip_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paperclip_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paperclip_client" do
    assert_difference('PaperclipClient.count') do
      post :create, :paperclip_client => @paperclip_client.attributes
    end

    assert_redirected_to paperclip_client_path(assigns(:paperclip_client))
  end

  test "should show paperclip_client" do
    get :show, :id => @paperclip_client.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @paperclip_client.to_param
    assert_response :success
  end

  test "should update paperclip_client" do
    put :update, :id => @paperclip_client.to_param, :paperclip_client => @paperclip_client.attributes
    assert_redirected_to paperclip_client_path(assigns(:paperclip_client))
  end

  test "should destroy paperclip_client" do
    assert_difference('PaperclipClient.count', -1) do
      delete :destroy, :id => @paperclip_client.to_param
    end

    assert_redirected_to paperclip_clients_path
  end
end
