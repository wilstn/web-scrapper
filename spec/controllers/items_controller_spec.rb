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

    end
  end

  describe 'POST edit' do
    it "updates the edited item" do

    end
  end

  describe 'DESTROY' do
    it "deletes the item" do

    end
  end

  describe 'scrape' do
    it "scrapes and displays the data" do
      
    end
  end

end
