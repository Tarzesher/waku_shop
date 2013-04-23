class CreateWkshpShipments < ActiveRecord::Migration
  def change
    create_table :wkshp_shipments do |t|
      t.integer :account_id
      t.string :description
      t.date :departure_date
      t.date :delivery_date

      t.timestamps
    end
  end
end
