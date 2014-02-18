class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    # @user = @post.user
  end

  def new
    @post = Post.new
  end
end
