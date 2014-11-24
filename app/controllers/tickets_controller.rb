class TicketsController < ApplicationController
  def index
    @tickets = Tickets.all
  end

  def show
    @tickets = Tickets.find(params[:id])
  end

  def new
    @tickets = Tickets.new
  end

  def create
    @tickets = Tickets.new(tickets_params)
      if @tickets.save
      redirect_to(:action => 'index')
      else
      render('new')
      end
    end
  
  def update
    @tickets = Tickets.find(params[:id])
      if @tickets.update_attributes(tickets_params)
      redirect_to(:action => 'show', :id => @tickets.id)
      else
      render('index')
      end
    end


  def edit
    @tickets = Tickets.find(params[:id])
  end

  def delete
    @tickets = Tickets.find(params[:id])
  end

  def destroy
    @tickets = Tickets.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end

  private
  
  def tickets_params
    
    params.require(:ticketsss).permit(:quantity , :Event_name)

   end 
  end
   