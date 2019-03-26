# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  before_action :set_current_user

  def set_search
    @q = Event.ransack(params[:q])
    @events = @q.result.with_attached_image.find_old_events(params[:page])
  end

  def set_current_user
    @current_user = current_user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
  end
end
