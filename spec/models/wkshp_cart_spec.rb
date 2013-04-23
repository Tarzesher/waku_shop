# == Schema Information
#
# Table name: wkshp_carts
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  account_id  :integer
#  currency_id :integer
#  quantity    :integer
#  vat         :float
#  amount      :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe WkshpCart do
  pending "add some examples to (or delete) #{__FILE__}"
end
