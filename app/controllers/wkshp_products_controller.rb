class WkshpProductsController < ApplicationController
 def new
	@product = WkshpProduct.new	
end


def index
end

def create
	@product = WkshpProduct.new(params [:wkshp_products])
	if(@product.save)
		redirect_to @product
	else
		render "new"
	end
end

def show
  	@product = WkshpProduct.find(params [:id ])
end
end
