class ApplicationController < ActionController::Base
  # helperメソッドとして使用可能
  helper_method :current_user

  private

  def current_user
    # nilかfalseの時に
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

end
