class WkshpCurrenciesController < ApplicationController

def new
	@currency = WkshpCurrency.new	
end

def index
end

def create
	@currency = WkshpCurrency.new(params [:wkshp_currency])
	if(@currency.save)
		redirect_to @currency
	else
		render "new"
	end
end

def show
  	@currency = WkshpCurrency.find(params [:id ])
end

end
