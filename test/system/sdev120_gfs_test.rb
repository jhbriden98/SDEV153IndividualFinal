require "application_system_test_case"

class Sdev120GfsTest < ApplicationSystemTestCase
  setup do
    @sdev120_gf = sdev120_gfs(:one)
  end

  test "visiting the index" do
    visit sdev120_gfs_url
    assert_selector "h1", text: "Sdev120 Gfs"
  end

  test "creating a Sdev120 gf" do
    visit sdev120_gfs_url
    click_on "New Sdev120 Gf"

    click_on "Create Sdev120 gf"

    assert_text "Sdev120 gf was successfully created"
    click_on "Back"
  end

  test "updating a Sdev120 gf" do
    visit sdev120_gfs_url
    click_on "Edit", match: :first

    click_on "Update Sdev120 gf"

    assert_text "Sdev120 gf was successfully updated"
    click_on "Back"
  end

  test "destroying a Sdev120 gf" do
    visit sdev120_gfs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sdev120 gf was successfully destroyed"
  end
end
