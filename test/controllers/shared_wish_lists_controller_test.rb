require 'test_helper'

class SharedWishListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wish_list = wish_lists(:one)
  end

  test 'should show shared_wish_list' do
    get shared_wish_list_url(@wish_list), as: :json
    assert_response :success
  end
end
