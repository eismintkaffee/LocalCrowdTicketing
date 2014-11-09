class UsersController < ApplicationController
before_filter :authenticate_user!
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(pet_params)
      if @user.save
      redirect_to(:action => 'index')
      else
      render('new')
      end
    end
  
  def update
    @user = User.find(params[:id])
      if @user.update_attributes(event_params)
      redirect_to(:action => 'show', :id => @user.id)
      else
      render('index')
      end
    end


  def edit
    @user = User.user(params[:id])
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    event = User.find(params[:id]).destroy
    redirect_to(:action => 'index')
  end


  private
  
  def user_params
    
    params.require(:user).permit(:email,:encrypted_password,:avatar)

   end 
  end
   
   