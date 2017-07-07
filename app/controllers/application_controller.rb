class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :avatar, :admin_role, :seller_role, :user_role, :current_password,]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
