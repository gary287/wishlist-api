require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wish_list = wish_lists(:one)
    @item = items(:one)
  end

  test 'should get index' do
    get wish_list_items_url(@wish_list), as: :json
    assert_response :success
  end

  test 'should create item' do
    assert_difference('Item.count') do
      post wish_list_items_url(@wish_list), params: { item: { title: 'Title', url: 'http://test.url' } }, as: :json
    end

    assert_response 201
  end

  test 'should show item' do
    get wish_list_item_url(@wish_list, @item), as: :json
    assert_response :success
  end

  test 'should update item' do
    patch wish_list_item_url(@wish_list, @item),
          params: { item: { title: 'Updated Title', url: 'http://updated.test.url' } }, as: :json
    assert_response 200
  end

  test 'should destroy item' do
    assert_difference('Item.count', -1) do
      delete wish_list_item_url(@wish_list, @item), as: :json
    end

    assert_response 204
  end
end
