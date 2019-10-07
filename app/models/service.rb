class Service < ApplicationRecord
  has_many :plans
  has_many :devices
end