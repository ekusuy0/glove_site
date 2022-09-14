class Item < ApplicationRecord

  has_many :cart_items, dependent: :destroy
  has_many :ordered_items, dependent: :destroy
  belongs_to :genre

  has_one_attached :item_image

  def tax_price
    (price * 1.1).floor
  end
end
