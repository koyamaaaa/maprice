class Provider < ApplicationRecord
  self.primary_key = "provider_id"
  validates :name , uniqueness: true
end