class YusersController < ApplicationController
  
  def new
    @yuser = Yuser.new
  end

  
  def create
    @yuser = Yuser.new(yuser_params)
    if @yuser.save
      flash[:notice]="Signup successful"
      redirect_to root_path
    else
      flash[:notice]="Please try again"
    end
  end
  
  def show
  
  end

  private
  def yuser_params
    params.require(:yuser).permit(:name , :username ,:password , :email , :phone) 
  end

end
