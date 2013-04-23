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

require 'spec_helper'

describe WkshpShipment do
  pending "add some examples to (or delete) #{__FILE__}"
end
