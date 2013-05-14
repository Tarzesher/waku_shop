class WkshpDepartmentsController < ApplicationController

def new
	@department = WkshpDepartment.new	
end

def index
end

def create
	@department = WkshpDepartment.new(params [:wkshp_department])
	if(@department.save)
		redirect_to @department
	else
		render "new"
	end
end

def show
  	@department = WkshpDepartment.find(params [:id ])
end

end
