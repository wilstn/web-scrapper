require 'rails_helper'

RSpec.describe Item, type: :model do

  describe 'scrape' do
    @item = Item.create(title: "testing title", link: "https://www.google.com/", selector: "div:nth-child(2) > a")
    @item.scrape

    it "scrapes the site with selector" do
      expect{@item.result}.to eq("中文(简体)Bahasa Melayuதமிழ்")
    end

    it "saves the data in item.result" do

    end
  end

end
