class WkshpShipmentsController < ApplicationController
   def new
	@shipment = WkshpShipment.new	
end


def index
end

def create
	@shipment = WkshpShipment.new(params [:wkshp_shipment])
	if(@shipment.save)
		redirect_to @shipment
	else
		render "new"
	end
end

def show
  	@shipment = WkshpShipment.find(params [:id ])
end
end
