require 'test_helper'

class ResponderStatusesControllerTest < ActionController::TestCase
  setup do
    @responder_status = responder_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:responder_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create responder_status" do
    assert_difference('ResponderStatus.count') do
      post :create, responder_status: { name: @responder_status.name }
    end

    assert_redirected_to responder_status_path(assigns(:responder_status))
  end

  test "should show responder_status" do
    get :show, id: @responder_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @responder_status
    assert_response :success
  end

  test "should update responder_status" do
    patch :update, id: @responder_status, responder_status: { name: @responder_status.name }
    assert_redirected_to responder_status_path(assigns(:responder_status))
  end

  test "should destroy responder_status" do
    assert_difference('ResponderStatus.count', -1) do
      delete :destroy, id: @responder_status
    end

    assert_redirected_to responder_statuses_path
  end
end
