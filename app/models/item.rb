class Item < ApplicationRecord
  validates :title, presence: true
  validates :link, presence: true
  validates :selector, presence: true

  
end
