class NetLinesController < ActionController::Base

  def index
    @net_lines = NetLine.all.includes()
    render '/admin_menu/net_lines/index'
  end

  def new
    @net_line = NetLine.new
    render new_net_line_path
  end

  def create
    @net_line = NetLine.new(net_line_params)
    if @net_line.save
      redirect_to @net_line
    else
      render new_net_line_path
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def net_line_params
    params.require(:net_line).permit(:name, :service_id)
  end

end