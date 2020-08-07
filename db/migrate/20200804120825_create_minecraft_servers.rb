class CreateMinecraftServers < ActiveRecord::Migration[6.0]
  def change
    create_table :minecraft_servers, id: false do |t|
      t.string :id, null: false, unique: true
      t.string :name
      t.string :family
      t.string :datacenter

      t.boolean :online
      t.string :online_users
      t.string :online_staff
      t.string :version

      t.timestamps
    end

    add_index :minecraft_servers, :id, unique: true
  end
end
