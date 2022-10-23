class CloseForm < ApplicationRecord

  has_many :custom_items, dependent: :destroy

  has_one_attached :close_forms_image
end
