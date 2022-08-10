class StarsController < ApplicationController
  def show
    @users = user.all
  end

  def index
    @users = User.all
  end

end
