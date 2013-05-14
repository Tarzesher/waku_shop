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

class WkshpCart < ActiveRecord::Base
	belongs_to :WkshpOrder

	validates(:quantity,  presence: true)
	validates(:vat,  presence: true)
	validates(:amount,  presence: true)
end
