class Public::OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
  end

  def show
  end

  def index
  end

  def confirm
    @order = current_user.orders.new(order_params)

    if params[:order][:choice] == "0"
      @order.zip_code = current_user.zip_code
      @order.address = current_user.address
      @order.name = current_user.name
    elsif params[:order][:choice] == "1"
      shipping_address = ShippingAddress.find(params[:address_id])
      @order.zip_code = shipping_address.zip_code
      @order.address = shipping_address.address
      @order.name = shipping_address.name
    elsif params[:order][:choice] == "2"
    else
      render :new
    end
    @order.delivery_money = 800
    total = 0
    @cart_items = current_user.cart_items.all
    @cart_items.each do |cart_item|
      total = total + cart_item.item.tax_price * cart_item.quantity
    end
    @order.items_total = total
  end

  def complete
  end

  private

  def order_params
    params.require(:order).permit(:payment_method, :name, :zip_code, :address)
  end
end
