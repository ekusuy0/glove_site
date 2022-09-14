class ShippingAddress < ApplicationRecord

  belongs_to :user

  def address_display
    '〒' + zip_code + ' ' + address + ' ' + name
  end
end
