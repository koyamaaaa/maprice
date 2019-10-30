class DashbordsController < ApplicationController 

  layout 'admin_menu'

  def index
    render '/admin_menu/dashbords/index'
  end

end