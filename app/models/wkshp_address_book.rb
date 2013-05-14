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

class WkshpAddressBook < ActiveRecord::Base
	belongs_to :WkshpAccount

	  	validates(:name,  presence: true)
		validates(:physical_address,  presence: true)
		validates(:contact_number2,  presence: true)
		VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
		validates :email_address , presence: true, format: {with: VALID_EMAIL_REGEX}
end
