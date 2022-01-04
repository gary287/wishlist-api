class ItemsController < ApplicationController
  before_action :get_wish_list
  before_action :set_item, only: %i[show update destroy]

  # GET /items
  def index
    @items = @wish_list.items

    render json: @items
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    @item = @wish_list.items.build(item_params)

    if @item.save
      render json: @item, status: :created, location: wish_list_items_url(@wish_list)
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private

  def get_wish_list
    @wish_list = WishList.find(params[:wish_list_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:title, :url, :wish_list_id)
  end
end
