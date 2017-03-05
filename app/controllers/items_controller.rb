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
    @item = Item.new(item_params)

    if @item.save
      redirect_to items_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def scrape
    
  end

  private

  def item_params
    params.require(:item).permit(:link, :selector, :extra)
  end
end
