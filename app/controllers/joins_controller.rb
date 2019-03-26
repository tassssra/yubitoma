class JoinsController < ApplicationController
  def create
    @join = current_user.joins.create(event_id: params[:event_id])
      redirect_back(fallback_location: events_path)
      flash[:notice] = "イベントに参加しました。"
  end

  def destroy
    @join = Join.find_by(event_id: current_user.event.id, user_id: current_user.id)
    @join.destroy
      redirect_back(fallback_location: events_path)
      flash[:notice] = "イベント参加をキャンセルしました。"
  end
end
