class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to controller: :users, action: :show, id: current_user.id
    else
      render '/admin_menu/sessions/new'
    end
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      # ユーザーログイン
      log_in user
      params[:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to controller: :users, action: :show, id: user.id
    else
      # ログインページに戻る
      render '/admin_menu/sessions/new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to controller: :users, action: :index
  end
end
