class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  # before_action :require_login

  def current_user
    session[:name] ||= nil
  end

  def welcome
  end

  # private
  
  # def require_login
  #   redirect_to login_path unless session.include? :name
  # end
end
