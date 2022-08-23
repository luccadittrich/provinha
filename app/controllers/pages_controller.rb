class PagesController < ApplicationController
  def home
    @post = Post.last
    @test = Test.all
    @answers = Answer.all
    @user = current_user
  end
end
