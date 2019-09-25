class Plan < ApplicationRecord
  has_many :plans_devices
  has_many :devices, through: :plans_devices
  belongs_to :campaign
  belongs_to :data_capacity
  belongs_to :provider

  accepts_nested_attributes_for :devices
end
