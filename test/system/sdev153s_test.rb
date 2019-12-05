require "application_system_test_case"

class Sdev153sTest < ApplicationSystemTestCase
  setup do
    @sdev153 = sdev153s(:one)
  end

  test "visiting the index" do
    visit sdev153s_url
    assert_selector "h1", text: "Sdev153s"
  end

  test "creating a Sdev153" do
    visit sdev153s_url
    click_on "New Sdev153"

    click_on "Create Sdev153"

    assert_text "Sdev153 was successfully created"
    click_on "Back"
  end

  test "updating a Sdev153" do
    visit sdev153s_url
    click_on "Edit", match: :first

    click_on "Update Sdev153"

    assert_text "Sdev153 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sdev153" do
    visit sdev153s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sdev153 was successfully destroyed"
  end
end
