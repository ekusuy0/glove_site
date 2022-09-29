class AddNameToColors < ActiveRecord::Migration[6.1]
  def change
    add_column :colors, :name, :string
  end
end
