class CreateWkshpAccounts < ActiveRecord::Migration
  def change
    create_table :wkshp_accounts do |t|
      t.integer :newsletter_id
      t.string :name
      t.string :surname
      t.date :date_of_birth
      t.string :physical_address
      t.string :postal_address
      t.string :email_address
      t.string :contact_number
      t.string :password
      t.integer :access_level

      t.timestamps
    end
  end
end
