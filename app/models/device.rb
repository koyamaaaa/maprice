class Device < ApplicationRecord
  has_many :plans_devices
  has_many :plans, through: :plans_devices

  belongs_to :service
end