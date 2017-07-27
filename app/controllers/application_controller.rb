class ApplicationController < ActionController::Base
  include Authorizations
  helper_method :is_admin, :is_employee
  # before_action :authenticate_user!
  protect_from_forgery with: :exception
end
