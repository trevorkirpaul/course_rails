class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  # add :name to whitelisted params
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])  
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])  
  end
end
