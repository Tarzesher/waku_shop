class WkshpAddressBooksController < ApplicationController
def new
	@address_book = WkshpAddressBook.new	
end


def index
end

def create
	@address_book = WkshpAddressBook.new(params [:wkshp_address_book])
	if(@address_book.save)
		redirect_to @address_book
	else
		render "new"
	end
end

def show
  	@address_book = WkshpAddressBook.find(params [:id ])
end
end
