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

require 'spec_helper'

describe WkshpInventory do
  pending "add some examples to (or delete) #{__FILE__}"
end
