class ServicesController < ActionController::Base

  def index
    @services = Service.all
    render '/admin_menu/services/index'
  end

  def new
    @service = Service.new
    render new_service_path
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to @service
    else
      render new_service_path
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
  end

  private

  def service_params
    params.require(:service).permit(:name)
  end

end