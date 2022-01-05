class SharedWishListsController < ApplicationController
  # GET /shared_wish_lists/1
  def show
    @wish_list = WishList.find(params[:id])
    render json: @wish_list
  end
end
