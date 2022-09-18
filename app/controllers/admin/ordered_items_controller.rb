class Admin::OrderedItemsController < ApplicationController

  def update
    ordered_item = OrderedItem.find(params[:id])
    ordered_item.update(ordered_item_params)
    ordered_items = OrderedItem.where(order_id: ordered_item.order_id)
    count = 0
    ordered_items.each do |ordered_item|
      if ordered_item.production_status == "production_completed"
        count = count + 1
      end
    end
    order = ordered_item.order
    if ordered_item.production_status == "in_production"
      order.update(order_status: "in_production")
    end
    if ordered_items.length == count
      order.update(order_status: "preparing_to_ship")
    end
    redirect_to request.referer
  end

  private

  def ordered_item_params
    params.require(:ordered_item).permit(:production_status)
  end
end
