class WkshpProductsController < ApplicationController
 def new
	@product = WkshpProduct.new	
end


def index
end

def create
	@product = WkshpProduct.new(params [:wkshp_product])
	if(@product.save)
		redirect_to @account
	else
		render "new"
	end
end

def show
  	@produc = WkshpProduct.find(params [:id ])
end
end
