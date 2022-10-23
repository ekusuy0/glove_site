class Leather < ApplicationRecord

  has_many :custom_items, dependent: :destroy

  has_one_attached :leather_image
end
