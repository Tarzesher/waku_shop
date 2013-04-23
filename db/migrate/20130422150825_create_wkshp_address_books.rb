class CreateWkshpAddressBooks < ActiveRecord::Migration
  def change
    create_table :wkshp_address_books do |t|
      t.integer :account_id
      t.string :name
      t.string :physical_address
      t.string :contact_number
      t.string :contact_number2
      t.string :email_address

      t.timestamps
    end
  end
end
