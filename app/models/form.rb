class Form < ApplicationRecord

  has_many :custom_items, dependent: :destroy

  has_one_attached :form_image
end
