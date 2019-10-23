class LikesController < ApplicationController
  
  def new
    @like = Like.new
  end

  def create 
    @like = Like.create(strong_like_params)
  end

  def show 
    @like = Like.find(params[:id])
  end
  
  private 

  def strong_like_params
    params.require(:like).permit(:user_id, :article_id)
  end
end
