# == Schema Information
#
# Table name: wkshp_inventories
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  items_count :integer
#  sold_items  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class WkshpInventory < ActiveRecord::Base
	has_many :WkshpDepartment
end
