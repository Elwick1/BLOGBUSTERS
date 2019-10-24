class LikesController < ApplicationController
  
  def new
    @like = Like.new
  end

  def create 
    @like = Like.new(strong_like_params)
    if @like.valid?
    @like.save
    redirect_to new_like_path
    end
  end

  def show 
    @like = Like.find(params[:id])
    @article = Like.article_id
  end
  
  private 

  def strong_like_params
    params.require(:like).permit(:user_id, :article_id)
  end
end
