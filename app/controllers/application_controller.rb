class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    before_action  :configure_permitted_parameters, if: :devise_controller?
    before_action  :profile_requirement_check

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :photo, :photo_cache, :location, :mobile])
  end

  def profile_requirement_check
    if current_user && (
      current_user.mobile.nil? ||
      current_user.location.nil? ||
      current_user.photo.nil?
    )
      return redirect_to new_require_infos_path
    end
  end
end
