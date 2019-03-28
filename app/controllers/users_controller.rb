class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @events = @user.events
    @join_events = @user.join_events
  end
end
