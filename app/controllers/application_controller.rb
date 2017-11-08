class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :year, :author

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def year
    Time.now.year
  end

  def author
    'Konstantin'
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
