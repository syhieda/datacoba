require "application_system_test_case"

class GurusTest < ApplicationSystemTestCase
  setup do
    @guru = gurus(:one)
  end

  test "visiting the index" do
    visit gurus_url
    assert_selector "h1", text: "Gurus"
  end

  test "should create guru" do
    visit gurus_url
    click_on "New guru"

    fill_in "Bid studi", with: @guru.bid_studi
    fill_in "Nama", with: @guru.nama
    click_on "Create Guru"

    assert_text "Guru was successfully created"
    click_on "Back"
  end

  test "should update Guru" do
    visit guru_url(@guru)
    click_on "Edit this guru", match: :first

    fill_in "Bid studi", with: @guru.bid_studi
    fill_in "Nama", with: @guru.nama
    click_on "Update Guru"

    assert_text "Guru was successfully updated"
    click_on "Back"
  end

  test "should destroy Guru" do
    visit guru_url(@guru)
    click_on "Destroy this guru", match: :first

    assert_text "Guru was successfully destroyed"
  end
end
