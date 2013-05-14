# == Schema Information
#
# Table name: wkshp_countries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class WkshpCountry < ActiveRecord::Base
	validates(:name,  presence: true)
end
