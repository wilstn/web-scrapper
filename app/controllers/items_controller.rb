class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:link, :selector, :extra)
  end
end
