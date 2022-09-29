class CartItem < ApplicationRecord

  belongs_to :user
  belongs_to :item
  belongs_to :custom_item

  def subtotal
    self.item.tax_price * self.quantity
  end
end
