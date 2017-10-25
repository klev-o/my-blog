class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :year, :author

  protected

  def year
    Time.now.year
  end

  def author
    'Konstantin'
  end

end
