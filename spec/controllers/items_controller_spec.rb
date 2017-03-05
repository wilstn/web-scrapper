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



end
