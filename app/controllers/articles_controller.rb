class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
    
  def create 
    @article = Article.new(strong_boy_params)
    @article.user = current_user
    @article.save
    if @article.valid?
      @article.save 
      redirect_to article_path(@article)
    else
      render :new
    end
  end
    
  def index 
    @articles = Article.all
  end
    
  def show
    set_article
    @user = current_user
    # byebug
  end
    
  def edit 
    set_article

  end
    
  def update
    @article = Article.find(params[:id])
    @article.update(strong_boy_params)
    flash[:notice] = "Your Article Was Updated"
    redirect_to article_path(@article)
  end
    
  def destroy
    set_article
    @article.destroy 
    redirect_to articles_path
  end
    
  def like 
    set_article 
    @article.destroy
    flash[:notice] = "Article Was Deleted"
    redirect_to article_path(@article)
  end

  def set_article 
    @article = Article.find(params[:id])
  end
    
    private
  def strong_boy_params
    params.require(:article).permit(:title, :content, :user_id)
  end
end
