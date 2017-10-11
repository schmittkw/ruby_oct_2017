class DojosController < ApplicationController
	def index
		@dojos = Dojo.all
	end	
	def new
		
	end
	def create
		dojo = Dojo.new(dojo_params)
		if dojo.valid?
			dojo.save()
			return redirect_to "/dojos"
		end
		flash[:notice] = dojo.errors.full_messages
		return redirect_to "/dojos/new"
	end
	private
		def dojo_params
			return params.require(:dojos).permit(:branch, :street, :city, :state)
		end
end