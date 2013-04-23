class CreateWkshpProducts < ActiveRecord::Migration
  def change
    create_table :wkshp_products do |t|
      t.integer :department_id
      t.string :name
      t.string :description
      t.float :price
      t.boolean :is_auctioned
      t.boolean :is_promoted

      t.timestamps
    end
  end
end
