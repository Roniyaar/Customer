class BankController < ApplicationController
	def index
	@s = Cstmr.find (params[:id])
		
	end
	def new
		
	end
	def create
		@s = Cstmr.find (params[:id])
  		@create = @s.create_bank(params[:data])
  		@create.save
  		redirect_to :action => 'view',:id=>@create
		
	end
	def view
		@v=Bank.find(params[:id])
	end
	def show
		@show = Bank.all
	end
	def edit
		@p =Bank.find(params[:id])
	end
	def update
		@s = Bank.find(params[:id])
		@d = @u.update_attributes(params[:edit])
		redirect_to :action => 'showall'
		
	end
	def delete
		
	end
end
