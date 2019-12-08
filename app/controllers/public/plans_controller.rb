class Public::PlansController < ApplicationController
  skip_before_action :user_logged_in?

  def index
    @search_plan_form = SearchPlanForm.new
    @plans = Plan.includes([:service, :data_capacity])
    render '/public/plans/index'
  end

  def show
    @plan = Plan.find(params[:id])
    render '/public/plans/show'
  end

  def search
    @search_plan_form = SearchPlanForm.new(search_params)
    @search_plan_forms = @search_plan_form.search
    render '/public/plans/search'
  end

  def search_params
    # requireの中にはモデル名を入れる
    # permitの中にはモデル名の中で欲しいカラムだけを入れる
    params.require(:search_plan_form).permit( :provider_id, :net_line_id, :data_capacity_id, 
                                              service_ids: [], campaign_ids: [], device_ids: [])
  end

  # サービスに属する回線リストの取得
  def get_net_line_category
    service = Service.find(params[:id])
    render json: service.net_lines.select(:id, :name)
  end
end
