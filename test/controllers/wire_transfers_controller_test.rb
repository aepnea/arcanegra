require 'test_helper'

class WireTransfersControllerTest < ActionController::TestCase
  setup do
    @wire_transfer = wire_transfers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wire_transfers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wire_transfer" do
    assert_difference('WireTransfer.count') do
      post :create, wire_transfer: { account: @wire_transfer.account, account_type: @wire_transfer.account_type, bank: @wire_transfer.bank, email: @wire_transfer.email, payment_type_id: @wire_transfer.payment_type_id, rut: @wire_transfer.rut, titular_account: @wire_transfer.titular_account }
    end

    assert_redirected_to wire_transfer_path(assigns(:wire_transfer))
  end

  test "should show wire_transfer" do
    get :show, id: @wire_transfer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wire_transfer
    assert_response :success
  end

  test "should update wire_transfer" do
    patch :update, id: @wire_transfer, wire_transfer: { account: @wire_transfer.account, account_type: @wire_transfer.account_type, bank: @wire_transfer.bank, email: @wire_transfer.email, payment_type_id: @wire_transfer.payment_type_id, rut: @wire_transfer.rut, titular_account: @wire_transfer.titular_account }
    assert_redirected_to wire_transfer_path(assigns(:wire_transfer))
  end

  test "should destroy wire_transfer" do
    assert_difference('WireTransfer.count', -1) do
      delete :destroy, id: @wire_transfer
    end

    assert_redirected_to wire_transfers_path
  end
end
