class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  end

  # def after_sign_in_path_for(resource)
  #   if resource.username == "team"
  #     request.env['omniauth.origin'] || stored_location_for(resource) || (redirect_to(asistencia_url) and return)
  #   elsif resource.username == "staff"
  #     request.env['omniauth.origin'] || stored_location_for(resource) || (redirect_to(registro_url) and return)
  #   elsif resource.username == "lider"
  #     request.env['omniauth.origin'] || stored_location_for(resource) || (redirect_to(asistencia_url) and return)
  #   else
  #     redirect_to root_url
  #   end
  # end

  # def after_sign_out_path_for(resource_or_scope)
  #   return redirect_to root_url
  # end
end
