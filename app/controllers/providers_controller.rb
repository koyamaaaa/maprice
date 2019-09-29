class ProvidersController < ActionController::Base
  def index
    @providers = Provider.all
    render '/admin_menu/providers/index'
  end

  def new
    @provider = Provider.new
    render new_provider_path
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      redirect_to @provider
    else
      flash[:alert] = '失敗'
      render new_provider_path
    end
  end

  def show
    @provider = Provider.find(params[:id])
    render '/admin_menu/providers/show'
  end

  def edit
    @provider = Provider.find(params[:id])
    render '/admin_menu/providers/edit'
  end

  def update
    @provider = Provider.find(params[:id])
    if @provider.update_attributes(provider_params)
      redirect_to @provider
    else
      render '/admin_menu/data_capacities/edit'
    end
  end

  def destroy
  end

  def provider_params
    params.require(:provider).permit(:name, :service_id)
  end
end