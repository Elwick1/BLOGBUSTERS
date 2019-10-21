class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:user][:username])
    if @user
      session[:user_id] = @user.id 
      redirect_to articles_path
    else
      flash[:notice] = "Sorry, But We Can't Find A BLOGBUSTER With That Username Or Password"
      redirect_to new_session_path
    end
  end

  def destroy
    session.destroy
    redirect_to new_session_path
  end
end
