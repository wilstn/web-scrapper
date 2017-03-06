class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
  end

  def new
    # modal popup + ajax?
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
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to items_path
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path
  end

  def scrape
    @items = Item.all

    user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:53.0) Gecko/20100101 Firefox/53.0"

    @items.each do |item|
      doc = Nokogiri::HTML(open(item.link, 'User-Agent' => user_agent))
      item.result = doc.css(item.selector).text

      item.save
    end

    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:link, :selector, :extra, :title)
  end
end
