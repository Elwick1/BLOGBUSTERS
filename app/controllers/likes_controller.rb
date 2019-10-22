class LikesController < ApplicationController
  
  def new
    @like = Like.new
  end

  def create 
    @like = Like.create
end
