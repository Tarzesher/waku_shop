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

class WkshpOrder < ActiveRecord::Base
	belongs_to :WkshpAccount
	validates(:items_count,  presence: true)
	validates(:amount,  presence: true)
	validates(:order_date,  presence: true)
end
