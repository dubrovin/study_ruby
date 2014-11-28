class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_devise_params, if: :devise_controller?

  private
    def configure_devise_params
        devise_parameter_sanitizer.for(:sign_up) do |user|
            user.permit(:email, :password, :password_confirmation, :login,
                :first_name, :last_name)
        end
    end
end
