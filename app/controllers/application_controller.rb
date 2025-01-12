class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name ])
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :surname ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :surname ])
  end

  def after_sign_in_path_for(home)
      root_path
  end
  private
  def authorize_admin!
    unless current_user&.admin?
      flash[:alert] = "Non sei autorizzato ad accedere a questa sezione."
      redirect_to root_path
    end
  end
end
