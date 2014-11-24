class PticketsController < ApplicationController
  before_filter :authenticate_user! #this is so they cannot access the page
  def index
    @ptickets = Pticket.all
  end

  def show
    @ptickets = Pticket.find(params[:id])
  end

  def new
    @ptickets = Pticket.new
  end

  def create
    @pticket = Pticket.new(pticket_params)
    if @pticket.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end


  def edit
     @ptickets = Pticket.find(params[:id])
  end

  def update
  @pticket = Pticket.find(params[:id])
  if @pticket.update_attributes(pticket_params)
    redirect_to(:action => 'show', :id => @pticket.id)
  else
    render('index')
  end
 end

 def delete
   @ptickets = Pticket.find(params[:id])
 end
 
 def destroy
   pticket = Pticket.find(params[:id]).destroy
   redirect_to(:action => 'index')
 end
  
  private 
    
    def pticket_params
      params.require(:pticket).permit(:eventName , :quantity)
    end
end