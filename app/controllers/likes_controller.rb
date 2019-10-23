class LikesController < ApplicationController
  # before_action :find_article
  
  # def create
  #   @article.likes.create(user_id: current_user.id)
  #   redirect_to article_path(@article)
  # end

  # private

  # def find_article
  #   @article = Article.find(params[:article_id])
  # end

  def new
    @like = Like.new
  end

  def create 
    @like = Like.create(strong_like_params)
    
    if @like.valid?
      @like.save 
      redirect_to article_path(@like.article) 
    end
  end
  
  
  def show 
    @like = Like.find(params[:id])
  end
  
  private 

  def strong_like_params
    params.require(:like).permit(:user_id, :article_id)
  end
end