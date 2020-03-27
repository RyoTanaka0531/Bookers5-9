class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit :sing_up, keys: [:email, :name, :password, :password_confirmation]
        devise_parameter_sanitizer.permit :account_update, keys: [:email, :name, :password, :password_confirmation]
        devise_parameter_sanitizer.permit :sign_in, keys: [:email, :name, :password, :password_confirmation]
    end
    def after_sign_in_path_for(resource)
        user_path(@user.id)
    end

    def after_sign_up_path_for(resource)
        user_path(@user.id)
    end
    def after_sign_out_path_for(resource)
        home_path
    end

end
