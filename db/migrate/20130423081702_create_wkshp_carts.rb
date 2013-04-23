class CreateWkshpCarts < ActiveRecord::Migration
  def change
    create_table :wkshp_carts do |t|
      t.integer :product_id
      t.integer :account_id
      t.integer :currency_id
      t.integer :quantity
      t.float :vat
      t.float :amount

      t.timestamps
    end
  end
end
