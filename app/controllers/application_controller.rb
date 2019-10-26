class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :user_logged_in?

  private

  def user_logged_in?
    unless logged_in?
      redirect_to '/', alert: '管理者ログインが必要です'
    end
  end

end
