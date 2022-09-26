class SessionsController < ApplicationController   
  
  def new 
    # @user= Yuser.find_by(params[:id])
    
  end   
  def create   
    @user = Yuser.find_by(username: params[:username])
    if @user 
      session[:user_id] = @user.id
      flash[:notice]="Login successful"
      redirect_to '/'
    else
      flash[:notice]="Invalid Email or Password"
      redirect_to '/login'
    end
  end  
   
  def destroy   
    session[:user_id] = nil
    flash[:notice]="Logged Out"
    redirect_to root_path  
  end   
  def show
  end

  
end  