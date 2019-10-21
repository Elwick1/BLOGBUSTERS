class UsersController < ApplicationController
  def index
    @users = User.all
  end
    
  def new
    @user = User.new
  end
    
  def create 
    @user = User.new(strong_boy_user_params)
    if @user.valid?
      @user.save 
      redirect_to user_path(@user)
    else
      render :new
    end
  end
      
  def show 
    @user = User.find(params[:id])
  end
    
  def destroy 
    @user = User.find(params[:id])
    @user.destroy 
    redirect_to users_path
  end
    
  private
      
  def strong_boy_user_params
    params.require(:user).permit(:username, :password, :age, :bio)
  end
end
