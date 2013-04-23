# == Schema Information
#
# Table name: wkshp_address_books
#
#  id               :integer          not null, primary key
#  account_id       :integer
#  name             :string(255)
#  physical_address :string(255)
#  contact_number   :string(255)
#  contact_number2  :string(255)
#  email_address    :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'spec_helper'

describe WkshpAddressBook do
  pending "add some examples to (or delete) #{__FILE__}"
end
