class PagesController < ApplicationController
  def home
    @post = Post.all
    @test = Test.all
    @answers = Answer.all
    @user = current_user
  end
end
