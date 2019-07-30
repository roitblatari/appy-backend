require 'test_helper'

class DeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deed = deeds(:one)
  end

  test "should get index" do
    get deeds_url, as: :json
    assert_response :success
  end

  test "should create deed" do
    assert_difference('Deed.count') do
      post deeds_url, params: { deed: { content: @deed.content, image_url: @deed.image_url, title: @deed.title, giver_id: @deed.giver_id, receiver_id: @deed.receiver_id } }, as: :json
    end

    assert_response 201
  end

  test "should show deed" do
    get deed_url(@deed), as: :json
    assert_response :success
  end

  test "should update deed" do
    patch deed_url(@deed), params: { deed: { content: @deed.content, image_url: @deed.image_url, title: @deed.title, user_giver_id: @deed.user_giver_id, user_receiver_id: @deed.user_receiver_id } }, as: :json
    assert_response 200
  end

  test "should destroy deed" do
    assert_difference('Deed.count', -1) do
      delete deed_url(@deed), as: :json
    end

    assert_response 204
  end
end
