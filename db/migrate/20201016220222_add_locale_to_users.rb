class AddLocaleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :locale, :string, default: "es_cl"
  end
end
