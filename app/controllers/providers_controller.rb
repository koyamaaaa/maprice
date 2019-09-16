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
    @provider = Provider.new(name:        params[:provider][:name],
                             net_line_id: params[:provider][:net_line_ie])
    if @provider.save
      redirect_to @provider
    else
      flash[:alert] = '失敗'
      render new_provider_path
    end
  end

  def update
  end

  def destroy
  end
end