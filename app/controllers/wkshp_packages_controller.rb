class WkshpPackagesController < ApplicationController
  
  def new
	@package = WkshpPackage.new	
end

def index
end

def create
	@package = WkshpPackage.new(params [:wkshp_package])
	if(@package.save)
		redirect_to @package
	else
		render "new"
	end
end

def show
  	@package = WkshpPackage.find(params [:id ])
end

end
