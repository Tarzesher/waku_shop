class WkshpOrdersController < ApplicationController

def new
	@order = WkshpOrder.new	
end

def index
end

def create
	@order = WkshpOrder.new(params [:wkshp_order])
	if(@order.save)
		redirect_to @order
	else
		render "new"
	end
end

def show
  	@order = WkshpOrder.find(params [:id ])
end

end
