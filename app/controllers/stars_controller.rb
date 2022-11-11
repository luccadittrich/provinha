class StarsController < ApplicationController
  def show
    @users = user.all
  end

  def index
    @users = User.all

  end

  def new
    @star = Star.new
    @user = User.find(params[:user_id])
    @user.score += 1

    redirect_to test_stars_path
  end

  def create
    @test = Test.find(params[:test_id])

    # @star = Star.new(user: )

    if !@star.save
      redirect_to test_stars_path
    end
  end
end
