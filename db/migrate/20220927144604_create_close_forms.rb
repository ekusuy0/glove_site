class CreateCloseForms < ActiveRecord::Migration[6.1]
  def change
    create_table :close_forms do |t|

      t.timestamps
    end
  end
end
