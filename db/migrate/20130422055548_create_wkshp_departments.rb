class CreateWkshpDepartments < ActiveRecord::Migration
  def change
    create_table :wkshp_departments do |t|
      t.integer :product_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
