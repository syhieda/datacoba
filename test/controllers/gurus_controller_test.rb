require "test_helper"

class GurusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guru = gurus(:one)
  end

  test "should get index" do
    get gurus_url
    assert_response :success
  end

  test "should get new" do
    get new_guru_url
    assert_response :success
  end

  test "should create guru" do
    assert_difference("Guru.count") do
      post gurus_url, params: { guru: { bid_studi: @guru.bid_studi, nama: @guru.nama } }
    end

    assert_redirected_to guru_url(Guru.last)
  end

  test "should show guru" do
    get guru_url(@guru)
    assert_response :success
  end

  test "should get edit" do
    get edit_guru_url(@guru)
    assert_response :success
  end

  test "should update guru" do
    patch guru_url(@guru), params: { guru: { bid_studi: @guru.bid_studi, nama: @guru.nama } }
    assert_redirected_to guru_url(@guru)
  end

  test "should destroy guru" do
    assert_difference("Guru.count", -1) do
      delete guru_url(@guru)
    end

    assert_redirected_to gurus_url
  end
end
