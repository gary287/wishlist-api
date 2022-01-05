class SharedWishListsController < ApplicationController
  before_action :set_wish_list

  # GET /shared_wish_lists/1
  def show
    @items = @wish_list.items.all
    render json: {
      wish_list: @wish_list.as_json(except: [:id]),
      items: @items.as_json(except: [:wish_list_id])
    }
  end

  # PATCH /shared_wish_lists/1/purchase/2
  def purchase
    params.require(:item_id)
    @item = @wish_list.items.find(params[:item_id])
    @item.purchased = true
    @item.save
    render json: @item.as_json(except: [:wish_list_id])
  end

  private

  def set_wish_list
    params.require(:shared_id)
    @wish_list = WishList.find_by(shared_id: params[:shared_id])
  end
end
