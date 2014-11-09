class TicketsController < ApplicationController
  def index
    @ticketss = Tickets.all
  end

  def show
    @ticketss = Tickets.find(params[:id])
  end

  def new
    @ticketss = Tickets.new
  end

  def create
    @ticketss = Tickets.new(tickets_params)
      if @ticketss.save
      redirect_to(:action => 'index')
      else
      render('new')
      end
    end
  
  def update
    @ticketss = Tickets.find(params[:id])
      if @ticketss.update_attributes(tickets_params)
      redirect_to(:action => 'show', :id => @tickets.id)
      else
      render('index')
      end
    end


  def edit
    @ticketss = Tickets.find(params[:id])
  end

  def delete
    @ticketss = Tickets.find(params[:id])
  end

  def destroy
    @ticketss = Tickets.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private
  
  def tickets_params
    
    params.require(:tickets).permit(:quantity , :Event_name)

   end 
  end
   