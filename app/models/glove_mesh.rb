class GloveMesh < ApplicationRecord

  has_many :custom_items, dependent: :destroy

  has_one_attached :glove_meshes_image
end
