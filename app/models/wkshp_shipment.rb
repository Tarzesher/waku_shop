# == Schema Information
#
# Table name: wkshp_shipments
#
#  id             :integer          not null, primary key
#  account_id     :integer
#  description    :string(255)
#  departure_date :date
#  delivery_date  :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class WkshpShipment < ActiveRecord::Base
	has_many :WkshpOrder

	 validates(:description, presence: true)
	 validates(:departure_date, presence: true)
	 validates(:delivery_date, presence: true)
end
