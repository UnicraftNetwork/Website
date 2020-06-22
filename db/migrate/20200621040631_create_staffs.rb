class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :uuid
      t.string :nick
      t.string :role
      t.string :email
      t.string :discord

      t.timestamps
    end
  end
end
