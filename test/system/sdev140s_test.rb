require "application_system_test_case"

class Sdev140sTest < ApplicationSystemTestCase
  setup do
    @sdev140 = sdev140s(:one)
  end

  test "visiting the index" do
    visit sdev140s_url
    assert_selector "h1", text: "Sdev140s"
  end

  test "creating a Sdev140" do
    visit sdev140s_url
    click_on "New Sdev140"

    click_on "Create Sdev140"

    assert_text "Sdev140 was successfully created"
    click_on "Back"
  end

  test "updating a Sdev140" do
    visit sdev140s_url
    click_on "Edit", match: :first

    click_on "Update Sdev140"

    assert_text "Sdev140 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sdev140" do
    visit sdev140s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sdev140 was successfully destroyed"
  end
end
