class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    must_be_logged_in
  end
  
  def current_user
    session[ :name ]
  end

  private

  def must_be_logged_in
    redirect_to login_path if !current_user
  end

end
