class CreateWkshpOrders < ActiveRecord::Migration
  def change
    create_table :wkshp_orders do |t|
      t.integer :account_id
      t.integer :category_id
      t.integer :package_id
      t.integer :cart_id
      t.integer :items_count
      t.float :amount
      t.date :order_date
      t.float :amount

      t.timestamps
    end
  end
end
