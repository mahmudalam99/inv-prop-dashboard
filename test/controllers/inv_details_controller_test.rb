require "test_helper"

class InvDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inv_detail = inv_details(:one)
  end

  test "should get index" do
    get inv_details_url
    assert_response :success
  end

  test "should get new" do
    get new_inv_detail_url
    assert_response :success
  end

  test "should create inv_detail" do
    assert_difference("InvDetail.count") do
      post inv_details_url, params: { inv_detail: { balance: @inv_detail.balance, dob: @inv_detail.dob, email: @inv_detail.email, first_name: @inv_detail.first_name, last_name: @inv_detail.last_name, phone: @inv_detail.phone, tfn: @inv_detail.tfn } }
    end

    assert_redirected_to inv_detail_url(InvDetail.last)
  end

  test "should show inv_detail" do
    get inv_detail_url(@inv_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_inv_detail_url(@inv_detail)
    assert_response :success
  end

  test "should update inv_detail" do
    patch inv_detail_url(@inv_detail), params: { inv_detail: { balance: @inv_detail.balance, dob: @inv_detail.dob, email: @inv_detail.email, first_name: @inv_detail.first_name, last_name: @inv_detail.last_name, phone: @inv_detail.phone, tfn: @inv_detail.tfn } }
    assert_redirected_to inv_detail_url(@inv_detail)
  end

  test "should destroy inv_detail" do
    assert_difference("InvDetail.count", -1) do
      delete inv_detail_url(@inv_detail)
    end

    assert_redirected_to inv_details_url
  end
end
