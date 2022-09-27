class CreateCustomItems < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_items do |t|

      t.integer :form_id, null: false
      t.integer :leather_id, null: false
      t.integer :close_form_id, null: false
      t.integer :color_id, null: false
      t.integer :glove_me_id, null: false
      t.string  :embroidery, null: false

      t.timestamps
    end
  end
end
