class Item < ApplicationRecord

  has_many :cart_items, dependent: :destroy
  has_many :ordered_items, dependent: :destroy
  belongs_to :genre
  
  has_one_attached :item_image
  
end
