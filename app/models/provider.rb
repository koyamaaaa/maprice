class Provider < ApplicationRecord
  has_many :plans
  has_many :campaigns
  has_many :data_capacities

end