class Provider < ApplicationRecord
  has_many :plans
  has_many :data_capacities
  has_many :campaigns
end