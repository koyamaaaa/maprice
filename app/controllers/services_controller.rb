class ServicesController < ActionController::Base

  def index
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
  end

  def update
  end

  def destroy
  end

  private

  def service_params
    params.require(:service).permit(:name)
  end

end