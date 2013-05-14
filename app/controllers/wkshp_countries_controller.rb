class WkshpCountriesController < ApplicationController

def new
	@country = WkshpCountry.new	
end

def index
end

def create
	@country = WkshpCountry.new(params [:wkshp_countru])
	if(@country.save)
		redirect_to @country
	else
		render "new"
	end
end

def show
  	@country = WkshpCountry.find(params [:id ])
end

end
