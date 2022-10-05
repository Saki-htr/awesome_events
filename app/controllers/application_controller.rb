class ApplicationController < ActionController::Base
  before_action :authenticate
  helper_method :logged_in?, :current_user

  private

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    return unless session[:user_id]
    # @current_userがなければ右辺
    @current_user ||= User.find(session[:user_id])
  end

  def authenticate
    return if logged_in? #ログインしていたら抜ける
    redirect_to root_path, alert: "ログインしてください"
  end
end
