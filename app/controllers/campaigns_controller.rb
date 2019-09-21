class CampaignsController < ActionController::Base
  def index
    @campaings = Campaing.all
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

  def update
  end

  def destroy
  end

  def campaign_params
    params.require(:campaign).permit(:name, :cp_content, :provider_id)
  end
end