class Admin::OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
    @ordered_items = @order.ordered_items
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    order.ordered_items.each do |ordered_item|
      if ordered_item.production_status == "not_startable"
        ordered_item.update(production_status: "waiting_for_production")
      end
    end
    redirect_to admin_order_path(order.id)
  end

  private

  def order_params
    params.require(:order).permit(:order_status)
  end
end
