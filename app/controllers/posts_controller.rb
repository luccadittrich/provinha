class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @posts = @post.posts.order(created_at: :desc)
    @new_post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    if @post.save
      redirect_to home_path
    else
      render :new
    end
  end

  def index
    @post = Post.find(params[:post_id])
  end

  private

  def post_params
    params.require(:post).permit(:content, :user_id, :post_id, files: [])
  end

end
