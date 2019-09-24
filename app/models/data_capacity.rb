class DataCapacity < ApplicationRecord
  has_many :plans
  belongs_to :provider
end