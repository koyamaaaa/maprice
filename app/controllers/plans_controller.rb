class PlansController < ActionController::Base

  def index
    @plans = Plan.all
    @campaigns = @plans.campaign.all
    render '/admin_menu/plans'
  end

  def new
    @plan = Plan.new
    render new_plan_path
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to @plan
    else
      render new_plan_path
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :p_content, :construct_period,
                                 :total_fee, :plan_device_fee, :plan_url,
                                 :campaign_id, :plan_device_id, :net_line_id,
                                 :service_id, :data_capacity_id, :provider_id
                                )
  end

end