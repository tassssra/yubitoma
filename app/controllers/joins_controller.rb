class JoinsController < ApplicationController
  before_action :set_event

  def create
    join = current_user.joins.build(event_id: params[:event_id])
    join.save
  end

  def destroy
    join = Join.find_by(event_id: params[:event_id], user_id: current_user.id)
    join.destroy
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end
end
