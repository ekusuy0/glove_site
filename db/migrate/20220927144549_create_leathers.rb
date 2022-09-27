class CreateLeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :leathers do |t|

      t.timestamps
    end
  end
end
