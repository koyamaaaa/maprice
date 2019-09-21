class DevicesController < ActionController::Base
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

  def update
  end

  def destroy
  end

  def device_params
    params.require(:device).permit(:name, :device_price, :service_id)
  end
end