class SessionsController < ApplicationController
  def create
    user = User.find_or_create_from_auth_hash!(request.env["omniauth.auth"])
    session[:user_id] = user.user_id
    redirect_to root_oath, notice: "ログインしました"
  end
end
