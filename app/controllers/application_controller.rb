class ApplicationController < ActionController::Base
  before_action :title
  before_action :configure_sign_up_params, only: [:create], if: :devise_controller?
  protect_from_forgery with: :exception

  private

  def title
    @title ||= 'Aimerald'
  end

  def not_admin
    redirect_to :root, notice: 'Not a member' unless user_signed_in?
    redirect_to :root, notice: 'You are not a admin' unless current_user.admin
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :admin])
  end
end
