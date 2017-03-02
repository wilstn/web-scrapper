require 'rails_helper'

RSpec.describe Item, type: :model do

  describe Item do
    it "has 0 customers at the start" do
      expect(Item.count).to eq(1)
    end
  end

end
