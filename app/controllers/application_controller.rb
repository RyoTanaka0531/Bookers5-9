class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception

    def after_sign_in_path_for(resource)
        user_path(current_user)
    end
    
    def after_sign_up_path_for(resource)
        user_path(current_user)
    end
    def after_sign_out_path_for(resource)
        home_path
    end
    protected
    def configure_permitted_parameters
        # devise_parameter_sanitizer.permit(:sing_up, keys:[:name, :email]) これだと入力できない
        # devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :email])
        devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :email])
        devise_parameter_sanitizer.permit(:sign_in, keys:[:name])
    end

end
