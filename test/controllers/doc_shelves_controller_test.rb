require "test_helper"

class DocShelvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doc_shelf = doc_shelves(:one)
  end

  test "should get index" do
    get doc_shelves_url, as: :json
    assert_response :success
  end

  test "should create doc_shelf" do
    assert_difference("DocShelf.count") do
      post doc_shelves_url, params: { doc_shelf: { key_area: @doc_shelf.key_area, limit: @doc_shelf.limit } }, as: :json
    end

    assert_response :created
  end

  test "should show doc_shelf" do
    get doc_shelf_url(@doc_shelf), as: :json
    assert_response :success
  end

  test "should update doc_shelf" do
    patch doc_shelf_url(@doc_shelf), params: { doc_shelf: { key_area: @doc_shelf.key_area, limit: @doc_shelf.limit } }, as: :json
    assert_response :success
  end

  test "should destroy doc_shelf" do
    assert_difference("DocShelf.count", -1) do
      delete doc_shelf_url(@doc_shelf), as: :json
    end

    assert_response :no_content
  end
end
