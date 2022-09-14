class Order < ApplicationRecord

  belongs_to :user
  has_many :ordered_items, dependent: :destroy

  enum payment_method: { credit_card: 0, transfer: 1 }
end
