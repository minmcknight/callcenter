require 'test_helper'

class CallsControllerTest < ActionController::TestCase
  setup do
    @call = calls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create call" do
    assert_difference('Call.count') do
      post :create, call: { address: @call.address, phone_number: @call.phone_number, priority_id: @call.priority_id, responder_id: @call.responder_id, status_id: @call.status_id, summary: @call.summary, type_id: @call.type_id }
    end

    assert_redirected_to call_path(assigns(:call))
  end

  test "should show call" do
    get :show, id: @call
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @call
    assert_response :success
  end

  test "should update call" do
    patch :update, id: @call, call: { address: @call.address, phone_number: @call.phone_number, priority_id: @call.priority_id, responder_id: @call.responder_id, status_id: @call.status_id, summary: @call.summary, type_id: @call.type_id }
    assert_redirected_to call_path(assigns(:call))
  end

  test "should destroy call" do
    assert_difference('Call.count', -1) do
      delete :destroy, id: @call
    end

    assert_redirected_to calls_path
  end
end
