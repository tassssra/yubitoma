class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: current_user.id)
    @events = @user.events
    @join_events = @user.join_events
  end
end
