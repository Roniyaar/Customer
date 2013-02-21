class CstmrController < ApplicationController
  def home

  end

  def index
    
  
  end
  def new
    @create  = cstmr.new
  	
  end
  def create
  	@create = Cstmr.new(params[:data])
  	if @create.save
      flash[:notice] = 'Successfully created'
  	redirect_to :action => 'edit',:id=>@create
  else 
    render :action => 'new'
  end
  end
  def show
  	@show = Cstmr.all
  end
  def details
  	@details = Cstmr.find(params[:id])
  end
  def edit
  	@edit = Cstmr.find(params[:id])
  end
  def update
  	@update = Cstmr.find(params[:id])
  	@update.update_attributes(params[:edit])
  	redirect_to :action => 'details',:id=>@update
  end
  def delete
  	@delete=Cstmr.find(params[:id])
    @delete.destroy
    redirect_to :action=>'show'
  end
end
