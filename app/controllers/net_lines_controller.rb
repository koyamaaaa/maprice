class NetLinesController < ActionController::Base

  layout 'admin_menu'

  def index
    @net_lines = NetLine.all
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
    @net_line = NetLine.find(params[:id])
    render '/admin_menu/net_lines/show'
  end

  def edit
    @net_line = NetLine.find(params[:id])
    render '/admin_menu/net_lines/edit'
  end

  def update
    @net_line = NetLine.find(params[:id])
    if @net_line.update_attributes(net_line_params)
      redirect_to @net_line
    else
      render '/admin_menu/net_lines/edit'
    end
  end

  def destroy
    @net_line = NetLine.find(params[:id])
    if @net_line.destroy
    # 成功時のメッセージを格納する
      flash[:success] = "ユーザーを削除しました"
    # ユーザー一覧画面を表示する
      redirect_to controller: :netlines, action: :index
    end
  end

  private

  def net_line_params
    params.require(:net_line).permit(:name, :service_id)
  end

end