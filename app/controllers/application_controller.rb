class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def favorite_text
      return @favorite_exists ? "Unfavorite" : "Favorite"
    end

    helper_method :favorite_text

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [ :first_name, :last_name, :username])
    end
end
