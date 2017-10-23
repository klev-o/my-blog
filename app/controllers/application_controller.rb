class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :year, :author

  protected

  def year
    2017
  end

  def author
    'Konstantin'
  end

end
