class ChangeDataTypeForUserStuffs < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :gender, :text
    change_column :users, :public_email, :text
    change_column :users, :location, :text
    change_column :users, :discord, :text
    change_column :users, :github, :text
    change_column :users, :instagram, :text
    change_column :users, :crowdin, :text
    change_column :users, :steam, :text
    change_column :users, :twitter, :text
    change_column :users, :occupation, :text
    change_column :users, :interests, :text
  end
end
