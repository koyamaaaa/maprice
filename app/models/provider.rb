class Provider < ApplicationRecord
  has_many :plans
  has_many :campaigns
  has_many :data_capacities
  belongs_to :net_line

end