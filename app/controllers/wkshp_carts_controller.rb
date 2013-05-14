class WkshpCartsController < ApplicationController
 def new
	@cart = WkshpCart.new	
end

def index
end

def create
	@cart = WkshpCart.new(params [:wkshp_cart])
	if(@cart.save)
		redirect_to @cart
	else
		render "new"
	end
end

def show
  	@cart = WkshpCart.find(params [:id ])
end
end
