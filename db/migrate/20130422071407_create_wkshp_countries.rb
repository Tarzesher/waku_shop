class CreateWkshpCountries < ActiveRecord::Migration
  def change
    create_table :wkshp_countries do |t|
      t.string :name

      t.timestamps
    end
  end
end
