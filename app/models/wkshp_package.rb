# == Schema Information
#
# Table name: wkshp_packages
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class WkshpPackage < ActiveRecord::Base
	has_many :WkshpOrder
end
