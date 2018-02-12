module DeviseWhitelist
  # use this naming convention, DeviseWhitelist = devise_whitelist
  # rails engine converts to all low case, puts '_' before upcase letters after initial
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  # add :name to whitelisted params
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])  
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])  
  end
end