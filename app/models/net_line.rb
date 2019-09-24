class NetLine < ApplicationRecord
  has_many :providers
  belongs_to :service
end