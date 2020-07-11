class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id

      t.text :about_me
      t.string :minecraft, limit: 16

      t.string :discord, limit: 36
      t.string :instagram, limit: 36
      t.string :youtube, limit: 36
      t.string :reddit, limit: 36
      t.string :steam, limit: 36
      t.string :twitter, limit: 36
      t.string :email, limit: 36
      t.string :github, limit: 36
      t.string :crowdin, limit: 36

      t.string :country, limit: 36
      t.string :sex, limit: 16
      t.string :occupation, limit: 36
      t.string :interests, limit: 36

      t.timestamps
    end

    add_index :profiles, :minecraft, unique: true
  end
end
