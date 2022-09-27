class CreateGloveMeshes < ActiveRecord::Migration[6.1]
  def change
    create_table :glove_meshes do |t|

      t.timestamps
    end
  end
end
