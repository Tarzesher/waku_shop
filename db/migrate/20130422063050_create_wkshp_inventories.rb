class CreateWkshpInventories < ActiveRecord::Migration
  def change
    create_table :wkshp_inventories do |t|
      t.integer :product_id
      t.integer :items_count
      t.integer :sold_items

      t.timestamps
    end
  end
end
