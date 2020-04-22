class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :identifier
      t.string :name
      t.string :colour_hex
      t.integer :priority

      t.timestamps
    end
  end
end
