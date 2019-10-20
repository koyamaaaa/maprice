class DevicesController < ActionController::Base

  layout 'admin_menu'
  
  def index
    @devices = Device.all
    render '/admin_menu/devices/index'
  end

  def new
    @device = Device.new
    render new_device_path
  end

  def create
    @device = Device.new(device_params)
    if @device.save
      redirect_to @device
    else
      flash[:alert] = '失敗'
      render new_device_path
    end
  end

  def show
    @device = Device.find(params[:id])
    render '/admin_menu/devices/show'
  end

  def edit
    @device = Device.find(params[:id])
    render '/admin_menu/devices/edit'
  end

  def update
    @device = Device.find(params[:id])
    if @device.update_attributes(device_params)
      redirect_to @device
    else
      render '/admin_menu/devices/edit'
    end
  end

  def destroy
  end

  def device_params
    params.require(:device).permit(:name, :device_price, :service_id)
  end
end