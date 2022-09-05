class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      
      t.integer :user_id, null: false
      t.integer :items_total, null: false
      t.integer :order_status, null: false, default: 0
      t.integer :payment_method, null: false, default: 0
      t.string :zip_code, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.integer :delivery_money, null: false

      t.timestamps
    end
  end
end
