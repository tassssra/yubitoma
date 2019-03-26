class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :destroy]
  # showアクションではset_eventを使用しない

  def index
    @events = Event.with_attached_image.find_old_events(params[:page]) # イベント日が近い順, asc省略
    @event = Event.new
    @join = Join.new
  end

  def show
    @event = Event.with_attached_image.includes(joins: :user).find(params[:id])
    @join = Join.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to @event, notice: "イベントを作成しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: "イベントを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice: "イベントを削除しました。"
  end

  private

  def event_params
    params.require(:event).permit(:title, :date, :address, :description, :new_image)
  end

  def set_event
    @event = Event.find(params[:id])
  end
end
