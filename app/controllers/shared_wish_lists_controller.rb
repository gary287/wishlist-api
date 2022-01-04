class SharedWishListsController < ApplicationController
  # GET /shared_wish_lists/1
  def show
    @shared_wish_list = SharedWishList.find(params[:id])
    @wish_list = @shared_wish_list.wish_list
    @wish_list.id = @shared_wish_list.id
    render json: @wish_list
  end
end
