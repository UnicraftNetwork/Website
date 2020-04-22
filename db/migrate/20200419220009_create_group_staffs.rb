class CreateGroupStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :group_staffs, id: false do |t|
      t.belongs_to :group, index: true
      t.belongs_to :staff, index: true

      t.timestamps
    end
  end
end
