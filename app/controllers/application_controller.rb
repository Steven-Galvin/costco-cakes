class ApplicationController < ActionController::Base
  include Authorizations
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :is_admin, :is_employee
  # before_action :authenticate_user!
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_number, :member_number])
  end
end
