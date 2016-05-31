class ItemsController < ApplicationController

# GET items
  def index
    @items = Item.where(user_id: params[:user_id])
    render json: @items
  end

  #GET items/id
  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  #POST new items
  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item
    else
      render json: @item.errors
    end
  end

  def complete
    @item = Item.find(params[:id])
    @item.complete == true
  end

  def incomplete
    @item = Item.find(params[:id])
    @item.complete == false
  end

  #UPDATE items/id
  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors
    end
  end

  private
  def item_params
    params.require(:item).permit(:user_id, :description, :due_date, :completed)
  end
end