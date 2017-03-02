require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe 'GET index' do
    it "displays all items" do
      item = Item.create
      get :index
      expect(assigns['items']).to eq([item])
    end
  end



end
