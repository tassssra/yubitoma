class JoinsController < ApplicationController
  def create
    @join = current_user.joins.create(event_id: params[:event_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @join = Join.find_by(event_id: params[:event_id], user_id: current_user.id)
    @join.destroy
      redirect_back(fallback_location: root_path)
  end
end
