class AddNameToGloveMeshes < ActiveRecord::Migration[6.1]
  def change
    add_column :glove_meshes, :name, :string
  end
end
