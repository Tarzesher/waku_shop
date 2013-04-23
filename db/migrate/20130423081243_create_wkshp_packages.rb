class CreateWkshpPackages < ActiveRecord::Migration
  def change
    create_table :wkshp_packages do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
