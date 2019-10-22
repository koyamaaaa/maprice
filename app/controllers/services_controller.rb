class ServicesController < ActionController::Base

  layout 'admin_menu'

  def index
    @services = Service.all
    render '/admin_menu/services/index'
  end

  def new
    @service = Service.new
    render '/admin_menu/services/new'
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to @service
    else
      render '/admin_menu/services/new'
    end
  end

  def show
    @service = Service.find(params[:id])
    render '/admin_menu/services/show'
  end

  def edit
    @service = Service.find(params[:id])
    render '/admin_menu/services/edit'
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(service_params)
      redirect_to @service
    else
      render '/admin_menu/services/edit'
    end 
  end

  def destroy
    @service = Service.find(params[:id])
    if @service.destroy
    # 成功時のメッセージを格納する
      flash[:success] = "ユーザーを削除しました"
    # ユーザー一覧画面を表示する
      redirect_to controller: :services, action: :index
    end
  end

  private

  def service_params
    params.require(:service).permit(:name)
  end

end