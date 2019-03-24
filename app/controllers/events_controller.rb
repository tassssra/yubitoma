class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.page(params[:page]).per(3)
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

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
