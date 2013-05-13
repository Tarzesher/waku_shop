class AddAttachmentPhotoToWkshpProducts < ActiveRecord::Migration
  def self.up
    change_table :wkshp_products do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :wkshp_products, :photo
  end
end
