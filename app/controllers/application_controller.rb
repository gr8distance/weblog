class ApplicationController < ActionController::Base
  before_action :title
  protect_from_forgery with: :exception

  private

  def title
    @title ||= 'Weblog'
  end
end
