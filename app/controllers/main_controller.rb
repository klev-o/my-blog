class MainController < ApplicationController
  def index
    Rails.logger.info '#######'
    Rails.logger.info '#######'
    Rails.logger.info '#######'
    session[:times] ||= 0
    #session[:times] = session[:times] || 0
    session[:times] += 1
  end
end
