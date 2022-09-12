class OrderedItem < ApplicationRecord

  belongs_to :order
  belongs_to :custom_item
  belongs_to :item
end
