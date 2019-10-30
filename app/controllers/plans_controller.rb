class PlansController < ApplicationController 

  layout 'admin_menu'

  def index
    @plans = Plan.all
    render '/admin_menu/plans/index'
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
    @plan = Plan.find(params[:id])
    render '/admin_menu/plans/show'
  end

  def edit
    @plan = Plan.find(params[:id])
    render '/admin_menu/plans/edit'
  end

  def update
    @plan = Plan.find(params[:id])
    if @plan.update_attributes(plan_params)
      redirect_to @plan
    else
      render '/admin_menu/plans/edit'
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    if @plan.destroy
    # 成功時のメッセージを格納する
      flash[:success] = "ユーザーを削除しました"
    # ユーザー一覧画面を表示する
      redirect_to controller: :plans, action: :index
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :p_content, :construct_period,
                                 :total_fee, :plan_device_fee, :plan_url,
                                 :plan_device_id, :data_capacity_id,
                                 :provider_id, { :campaign_ids=> [] },
                                 { :service_ids=> [] }, { :device_ids=> [] }
                                )
  end

end