class AddNameToLeathers < ActiveRecord::Migration[6.1]
  def change
    add_column :leathers, :name, :string
  end
end
