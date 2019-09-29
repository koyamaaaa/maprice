class CampaignsController < ActionController::Base
  def index
    @campaigns = Campaign.all
    render '/admin_menu/campaigns/index'
  end

  def new
    @campaign = Campaign.new
    render new_campaign_path
  end

  def create
    @campaign = Campaign.new(campaign_params)
    if @campaign.save
      redirect_to @campaign
    else
      flash[:alert] = '失敗'
      render new_campaign_path
    end
  end

  def show
    @campaign = Campaign.find(params[:id])
    render '/admin_menu/campaigns/show'
  end

  def edit
    @campaign = Campaign.find(params[:id])
    render '/admin_menu/campaigns/edit'
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update_attributes(campaign_params)
      redirect_to @campaign
    else
      render '/admin_menu/campaigns/edit'
    end
  end

  def destroy
  end

  def campaign_params
    params.require(:campaign).permit(:name, :cp_content, :provider_id)
  end
end