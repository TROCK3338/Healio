class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role])
  end

  def after_sign_in_path_for(resource)
  if resource.role == "receptionist"
    receptionist_root_path
  elsif resource.role == "doctor"
    doctor_root_path
  else
    authenticated_root_path
  end
end
end