class CustomItem < ApplicationRecord
  
  has_many :cart_items, dependent: :destroy
  has_many :ordered_items, dependent: :dest
end
