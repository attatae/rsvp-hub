class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  private

  def authenticate!
    raise ActionController::RoutingError.new('Not Found') unless current_user
  end

end
