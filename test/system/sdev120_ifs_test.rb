require "application_system_test_case"

class Sdev120IfsTest < ApplicationSystemTestCase
  setup do
    @sdev120_if = sdev120_ifs(:one)
  end

  test "visiting the index" do
    visit sdev120_ifs_url
    assert_selector "h1", text: "Sdev120 Ifs"
  end

  test "creating a Sdev120 if" do
    visit sdev120_ifs_url
    click_on "New Sdev120 If"

    click_on "Create Sdev120 if"

    assert_text "Sdev120 if was successfully created"
    click_on "Back"
  end

  test "updating a Sdev120 if" do
    visit sdev120_ifs_url
    click_on "Edit", match: :first

    click_on "Update Sdev120 if"

    assert_text "Sdev120 if was successfully updated"
    click_on "Back"
  end

  test "destroying a Sdev120 if" do
    visit sdev120_ifs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sdev120 if was successfully destroyed"
  end
end
