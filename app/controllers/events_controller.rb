class EventsController < ApplicationController

  def index
    @events = Event.with_attached_image.find_old_events(params[:page]) # イベント日が近い順, asc省略
  end

  def show
    @user = current_user
    @event = Event.with_attached_image.includes(joins: :user).find(params[:id])
    # mapメソッドを使いjoinをeventの情報に変換
    @join_events = @user.joins.map{ |join| join.event }
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params) # フォームから送られてきたデータをストロングパラメータを経由して@eventに代入
    @event.user_id = current_user.id # user_idの情報はフォームからはきていないので、deviseのメソッドを使って「ログインしている自分のid」を代入
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
    params.require(:event).permit(:title, :date, :address, :description, :new_image, :user_id)
  end
end
