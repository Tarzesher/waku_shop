# == Schema Information
#
# Table name: wkshp_orders
#
#  id          :integer          not null, primary key
#  account_id  :integer
#  category_id :integer
#  package_id  :integer
#  cart_id     :integer
#  items_count :integer
#  amount      :float
#  order_date  :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe WkshpOrder do
  pending "add some examples to (or delete) #{__FILE__}"
end
