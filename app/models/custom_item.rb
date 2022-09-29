class CustomItem < ApplicationRecord

  belongs_to :form
  belongs_to :color
  belongs_to :close_form
  belongs_to :glove_mesh
  belongs_to :leather
  has_many :cart_items, dependent: :destroy
  has_many :ordered_items, dependent: :destroy
end
