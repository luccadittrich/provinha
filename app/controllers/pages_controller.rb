class PagesController < ApplicationController
  def home
    @post = Post.all
    @user = current_user
  end
end
