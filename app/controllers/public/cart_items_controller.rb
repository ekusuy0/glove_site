class Public::CartItemsController < ApplicationController

  def index
    @cart_items = current_user.cart_items.all
  end

  def create
    cart_item = current_user.cart_items.new(cart_item_params)
    if cart_item.save
      redirect_to cart_items_path
    else
      redirect_to request.referer
    end
  end

  def update
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to cart_items_path
  end

  def destroy_all
    cart_items = current_user.cart_items
    cart_items.destroy_all
    redirect_to cart_items_path
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:item_id, :quantity)
  end
end
