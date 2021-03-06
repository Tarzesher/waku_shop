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

class WkshpAccount < ActiveRecord::Base
	attr_accessible	:user_id, :newsletter_id,:name,:surname,:date_of_birth,:physical_address,:postal_address,:email_address,:contact_number
	has_many :WkshpAddressBook
	validates( :name , presence: true)
	validates( :surname , presence: true)
	validates( :date_of_birth , presence: true)
	validates( :physical_address , presence: true)
	validates( :postal_address , presence: true)
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email_address , presence: true, format: {with: VALID_EMAIL_REGEX}
	validates( :contact_number , presence: true)
end
