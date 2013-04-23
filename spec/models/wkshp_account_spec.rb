# == Schema Information
#
# Table name: wkshp_accounts
#
#  id               :integer          not null, primary key
#  newsletter_id    :integer
#  name             :string(255)
#  surname          :string(255)
#  date_of_birth    :date
#  physical_address :string(255)
#  postal_address   :string(255)
#  email_address    :string(255)
#  contact_number   :string(255)
#  password         :string(255)
#  access_level     :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'spec_helper'

describe WkshpAccount do
  pending "add some examples to (or delete) #{__FILE__}"
end
