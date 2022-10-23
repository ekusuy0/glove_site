class Color < ApplicationRecord

  has_many :custom_items, dependent: :destroy
  
  has_one_attached :color_image
end
