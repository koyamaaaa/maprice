class Provider < ApplicationRecord
  validates :name , uniqueness: true
end