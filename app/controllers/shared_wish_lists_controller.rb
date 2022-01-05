class SharedWishListsController < ApplicationController
  # GET /shared_wish_lists/1
  def show
    @wish_list = WishList.find_by(shared_id: params[:shared_id])
    render json: @wish_list.as_json(except: [:id])
  end
end
