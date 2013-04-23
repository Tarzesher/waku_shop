# == Schema Information
#
# Table name: wkshp_currencies
#
#  id            :integer          not null, primary key
#  country_id    :integer
#  name          :string(255)
#  syboml        :string(255)
#  exchange_rate :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class WkshpCurrency < ActiveRecord::Base
end
