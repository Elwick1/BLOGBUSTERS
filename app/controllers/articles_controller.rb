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
    @article = Article.find(params[:id])
  end
    
  def edit 
    @article = Article.find(params[:id])
  end
    
  def update
    @article = Article.find(params[:id])
    @article.update(strong_boy_params)
    redirect_to article_path(@article)
  end
    
  def destroy
    @article = Article.find(params[:id])
    @article.destroy 
    redirect_to articles_path
  end
    
  def like 
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to article_path(@article)
  end
    
    private
  def strong_boy_params
    params.require(:article).permit(:title, :content, :user_id)
  end
end
