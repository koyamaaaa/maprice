class Public::PublicsController < ApplicationController
  skip_before_action :user_logged_in?

  def index
    render '/public/index'
  end
end