class SearchPlanForm
  include ActiveModel::Model
  
  ATTRIBUTES = %i(
    device_ids
    data_capacity_id
    campaign_ids
    provider_id
    net_line_id
    service_ids
  )
  attr_accessor(*ATTRIBUTES)

  def search
    # 検索したい対象のモデルのレコードを全て取得する
    results = ::Plan.all
    results = results.joins(:devices).merge(Device.where(id: device_ids)) if device_ids.present? && device_ids != [""] 
    results = results.joins(:services).merge(Service.where(id: service_ids)) if service_ids.present? && service_ids != [""] 
    results = results.joins(:campaigns).merge(Campaign.where(id: campaign_ids)) if campaign_ids.present? && campaign_ids != [""] 
    results = results.where(data_capacity: data_capacity_id) if data_capacity_id.present?
    results = results.where(provider_id: provider_id) if provider_id.present?
    results = results.where(net_line_id: net_line_id) if net_line_id.present?
    results
  end

end