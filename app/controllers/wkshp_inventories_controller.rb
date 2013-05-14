class WkshpInventoriesController < ApplicationController

def new
	@inventory = WkshpInventory.new	
end

def index
end

def create
	@inventory = WkshpInventory.new(params [:wkshp_inventory])
	if(@inventory.save)
		redirect_to @inventory
	else
		render "new"
	end
end

def show
  	@inventory = WkshpInventory.find(params [:id ])
end

end
