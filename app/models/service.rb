class Service < ApplicationRecord
  has_many :plans_services
  has_many :plans, through: :plans_services
  has_many :devices
end