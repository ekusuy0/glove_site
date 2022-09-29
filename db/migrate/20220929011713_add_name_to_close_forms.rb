class AddNameToCloseForms < ActiveRecord::Migration[6.1]
  def change
    add_column :close_forms, :name, :string
  end
end
