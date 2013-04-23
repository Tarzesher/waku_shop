# == Schema Information
#
# Table name: wkshp_products
#
#  id            :integer          not null, primary key
#  department_id :integer
#  name          :string(255)
#  description   :string(255)
#  price         :float
#  is_auctioned  :boolean
#  is_promoted   :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'spec_helper'

describe WkshpProduct do
  pending "add some examples to (or delete) #{__FILE__}"
end
