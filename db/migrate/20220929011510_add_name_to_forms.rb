class AddNameToForms < ActiveRecord::Migration[6.1]
  def change
    add_column :forms, :name, :string
  end
end
