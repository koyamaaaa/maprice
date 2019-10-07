class SearchPlanForm
  include ActiveModel::Model
  
  ATTRIBUTES = %i(
    device_id
    data_capacity_id
    campaign_id
    provider_id
    net_line_id
    service_id
  )
  attr_accessor(*ATTRIBUTES)

  def search
    # 検索したい対象のモデルのレコードを全て取得する
    results = ::Plan.all
    results = results.joins(:devices).select("plans.*, devices.*").where("devices_id": device_id) if device_id.present?
    results = results.where(campaign_id: campaign_id) if campaign_id.present?
    results = results.where(data_capacity: data_capacity_id) if data_capacity_id.present?
    results = results.where(provider_id: provider_id) if provider_id.present?
    results = results.where(net_line_id: net_line_id) if net_line_id.present?
    results = results.where(service_id: service_id) if service_id.present?
    results
  end
end