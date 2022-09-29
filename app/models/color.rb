class Color < ApplicationRecord

  has_many :custom_items, dependent: :destroy
end
