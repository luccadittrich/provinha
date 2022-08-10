class PagesController < ApplicationController
  def home
    @posts = Post.all
    @test = Test.all
    @answers = Answer.all
    @user = current_user
  end
end
