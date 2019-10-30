class CampaignsController < ApplicationController 

  layout 'admin_menu'

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
      logger.debug @campaign.errors.inspect
    end
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    if @campaign.destroy
    # 成功時のメッセージを格納する
      flash[:success] = "ユーザーを削除しました"
    # ユーザー一覧画面を表示する
      redirect_to controller: :campaigns, action: :index
    end
  end

  def campaign_params
    params.require(:campaign).permit(:name, :cp_content, :provider_id)
  end
end