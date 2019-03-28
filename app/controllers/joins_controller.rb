class JoinsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    join = current_user.joins.build(event_id: params[:event_id])
    join.save
  end

  def destroy
    @event = Event.find(params[:event_id])
    join = Join.find_by(event_id: params[:event_id], user_id: current_user.id)
    join.destroy
  end
end
