require "application_system_test_case"

class InvDetailsTest < ApplicationSystemTestCase
  setup do
    @inv_detail = inv_details(:one)
  end

  test "visiting the index" do
    visit inv_details_url
    assert_selector "h1", text: "Inv details"
  end

  test "should create inv detail" do
    visit inv_details_url
    click_on "New inv detail"

    fill_in "Balance", with: @inv_detail.balance
    fill_in "Dob", with: @inv_detail.dob
    fill_in "Email", with: @inv_detail.email
    fill_in "First name", with: @inv_detail.first_name
    fill_in "Last name", with: @inv_detail.last_name
    fill_in "Phone", with: @inv_detail.phone
    fill_in "Tfn", with: @inv_detail.tfn
    click_on "Create Inv detail"

    assert_text "Inv detail was successfully created"
    click_on "Back"
  end

  test "should update Inv detail" do
    visit inv_detail_url(@inv_detail)
    click_on "Edit this inv detail", match: :first

    fill_in "Balance", with: @inv_detail.balance
    fill_in "Dob", with: @inv_detail.dob
    fill_in "Email", with: @inv_detail.email
    fill_in "First name", with: @inv_detail.first_name
    fill_in "Last name", with: @inv_detail.last_name
    fill_in "Phone", with: @inv_detail.phone
    fill_in "Tfn", with: @inv_detail.tfn
    click_on "Update Inv detail"

    assert_text "Inv detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Inv detail" do
    visit inv_detail_url(@inv_detail)
    click_on "Destroy this inv detail", match: :first

    assert_text "Inv detail was successfully destroyed"
  end
end
