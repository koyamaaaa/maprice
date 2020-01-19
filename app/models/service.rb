class Service < ApplicationRecord
  has_many :plans_services
  has_many :plans, through: :plans_services

  belongs_to :plan
end