require "test_helper"

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get documents_url, as: :json
    assert_response :success
  end

  test "should create document" do
    assert_difference("Document.count") do
      post documents_url, params: { document: { author_id: @document.author_id, doc_shelf_id: @document.doc_shelf_id, info: @document.info, published_at: @document.published_at, status: @document.status, title: @document.title, version: @document.version } }, as: :json
    end

    assert_response :created
  end

  test "should show document" do
    get document_url(@document), as: :json
    assert_response :success
  end

  test "should update document" do
    patch document_url(@document), params: { document: { author_id: @document.author_id, doc_shelf_id: @document.doc_shelf_id, info: @document.info, published_at: @document.published_at, status: @document.status, title: @document.title, version: @document.version } }, as: :json
    assert_response :success
  end

  test "should destroy document" do
    assert_difference("Document.count", -1) do
      delete document_url(@document), as: :json
    end

    assert_response :no_content
  end
end
