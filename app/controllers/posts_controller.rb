class PostsController < ApplicationController
  def show

  end

  def new
    @post = Post.new
  end
end
