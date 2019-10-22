class Campaign < ApplicationRecord
  has_many :plans_campaigns
  has_many :plans, through: :plans_campaigns
  belongs_to :provider
end