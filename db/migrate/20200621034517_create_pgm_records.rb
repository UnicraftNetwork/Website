class CreatePgmRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :pgm_records, id: false do |t|
      t.string :uuid, limit: 36
      t.string :nick, limit: 16
      t.integer :kills
      t.integer :deaths
      t.integer :killed
      t.decimal :kd, precision: 3
      t.decimal :kk, precision: 3
      t.integer :wools
      t.integer :monuments
      t.integer :cores
    end
  end
end
