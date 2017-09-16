class ApplicationController < ActionController::Base
  before_action :title
  before_action :configure_sign_up_params, only: [:create]
  protect_from_forgery with: :exception

  private

  def title
    @title ||= 'Weblog'
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :name
  # end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :admin])
  end
end
