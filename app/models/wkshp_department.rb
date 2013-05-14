# == Schema Information
#
# Table name: wkshp_departments
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class WkshpDepartment < ActiveRecord::Base
	validates(:name,  presence: true)
	validates(:description,  presence: true)
end
