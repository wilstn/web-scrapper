require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe 'GET index' do
    it "gets all items" do
      item = Item.create
      get :index
      expect(assigns['items']).to eq([item])
    end
  end

  describe 'GET new' do
    it "gets new item" do
      item = Item.new
      get :new
      expect(assigns(:item)).to be_a_new(Item)
    end
  end

  describe 'POST create' do
    it 'creates and save a new item' do
      expect{Item.create}.to change{Item.count}.by(1)
    end
  end

  describe 'GET edit' do
    it "gets item to edit" do
      @item = Item.create(title: "something")
      get :edit, id: @item
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST update' do
    it "updates the edited item" do
      @item = Item.create(title: "something")
      @item.update(title: "something else")
      expect(response).to have_http_status(:success)
    end
  end

  describe 'DESTROY' do
    it "deletes the item" do
      delete :destroy, params: { id: 1 }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'scrape' do
    it "scrapes and displays the data" do

    end
  end

end
