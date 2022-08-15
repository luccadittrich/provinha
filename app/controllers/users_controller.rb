class UsersController < ApplicationController
  def home
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @score = @user.score
    @score = 0
  end

  def user_params
    params.require(:user).permit(:photo)
  end

  def index
    @users = Users.all
  end
  
end
