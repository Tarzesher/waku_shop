class WkshpAccountsController < ApplicationController

def new
	@account = WkshpAccount.new	
end


def index
end

def create
	@account = WkshpAccount.new(params [:wkshp_account])
	if(@account.save)
		redirect_to @account
	else
		render "new"
	end
end

def show
  	@account = WkshpAccount.find(params [:id ])
end

end




