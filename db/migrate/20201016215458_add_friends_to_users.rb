class AddFriendsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :friends, :text, null: false
  end
end
