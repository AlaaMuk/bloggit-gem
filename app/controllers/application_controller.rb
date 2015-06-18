class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 def current_user
    @current_user ||= User.first || User.create!(name: "Admin")
  end

  def login_required
    redirect_to root_url unless current_user
  end

  helper_method :current_user

end
