class CreateWkshpCurrencies < ActiveRecord::Migration
  def change
    create_table :wkshp_currencies do |t|
      t.integer :country_id
      t.string :name
      t.string :syboml
      t.float :exchange_rate

      t.timestamps
    end
  end
end
