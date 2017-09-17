class ApplicationController < ActionController::Base
  before_action :title
  before_action :configure_sign_up_params, only: [:create]
  protect_from_forgery with: :exception

  private

  def title
    @title ||= 'Weblog'
  end

  def not_admin
    unless current_user.admin
      redirect_to :root, notice: 'You are not a admin'
    end
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :admin])
  end
end
