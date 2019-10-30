class PlansCampaign < ApplicationRecord
  belongs_to :plan
  belongs_to :campaign
end