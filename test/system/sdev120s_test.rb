require "application_system_test_case"

class Sdev120sTest < ApplicationSystemTestCase
  setup do
    @sdev120 = sdev120s(:one)
  end

  test "visiting the index" do
    visit sdev120s_url
    assert_selector "h1", text: "Sdev120s"
  end

  test "creating a Sdev120" do
    visit sdev120s_url
    click_on "New Sdev120"

    click_on "Create Sdev120"

    assert_text "Sdev120 was successfully created"
    click_on "Back"
  end

  test "updating a Sdev120" do
    visit sdev120s_url
    click_on "Edit", match: :first

    click_on "Update Sdev120"

    assert_text "Sdev120 was successfully updated"
    click_on "Back"
  end

  test "destroying a Sdev120" do
    visit sdev120s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sdev120 was successfully destroyed"
  end
end
