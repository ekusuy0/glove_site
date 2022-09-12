class Public::CartItemsController < ApplicationController

  def index
    @cart_items = current_user.cart_items.all
  end

  def create
    cart_item = CartItem.new(cart_item_params)
    cart_item.user_id = current_user.id
    cart_item.save
    redirect_to cart_items_path
  end

  def update
  end

  def destroy
  end

  def destroy_all
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :item_id)
  end
end
