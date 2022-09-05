class CreateCustomItems < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_items do |t|

      t.string :form, null: false
      t.string :leather, null: false
      t.string :close_form, null: false
      t.string :color, null: false
      t.string :net, null: false
      t.string :embroidery


      t.timestamps
    end
  end
end
