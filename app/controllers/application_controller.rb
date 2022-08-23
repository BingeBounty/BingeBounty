class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # from devise docs
  # https://github.com/heartcombo/devise#strong-parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up)  {|u| u.permit(:username, :email, :password, :password_confirmation, :remember_me)}
    # devise_parameter_sanitizer.permit(:sign_in)  {|u| u.permit(:username, :email, :password, :password_confirmation, :remember_me)}
    # devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:email, :username, :password, :password_confirmation, :remember_me)}
  end
end
