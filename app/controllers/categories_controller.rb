class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @recent_comments = Comment.find(:all, :order => "id desc", :limit => 3)
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
  end


end
