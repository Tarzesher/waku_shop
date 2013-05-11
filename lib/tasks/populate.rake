namespace :db do 
	desc "Erase and fill database"
	task :populate => :environment do
		require 'populator'
		require 'faker'

		[WkshpProduct, WkshpOrder, WkshpAccount].each(&:delete_all)

		WKshpProduct.populate 20 do |product|
			product.name = Populator.words(1..7).titleize
			WKshpOrder.populate 10..100 do |order|
			product.id = order.account_id
			product.description = Populator.sentence(1..2)
			product.price = [3.34, 5.60 ,100, 56.40]
			product.is_auctioned = [1, 0]
			product.is_promoted = [1,0]
			product.create_at = 0.1.years.ago..Time.now
			product.updated_at = 0.1.years.ago..Time.now

			end
 		end

 		WkshpAccount.populate 100 do |account|
 			account.name = Faker::Name.name
 			WKshpOrder.populate 10..100 do |order|
			account.id = order.account_id
			
			account.surname = Faker::Surname.surname
			account.date_of_birth = 2.years.from_now..Time.now
			account.postal_address = Faker::Address.street_address
			account.physical_address = Faker::Address.street_address
			account.create_at = 0.1.years.ago..Time.now
			account.updated_at = 0.1.years.ago..Time.now
			account.email = Faker::Internet.email
			account.contact_number = Faker::PhoneNumber.phone_number
			account.password = Populator.words(1..7).titleize
			end
		end
	end
end