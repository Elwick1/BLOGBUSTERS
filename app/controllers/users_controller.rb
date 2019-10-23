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
      flash[:success] = "Welcome to the BLOGBUSTERS #{@user.username}"
      redirect_to welcome_path
    else
      render :new
    end
  end
      
  def show 
    set_user
  end
    
  def destroy 
    set_user
    session.destroy
    @user.destroy 
    redirect_to users_path
  end

  def set_user
    @user = User.find(params[:id])
  end
    
  private
      
  def strong_boy_user_params
    params.require(:user).permit(:username, :password, :age, :bio)
  end
end
