class Service < ApplicationRecord
  has_many :net_lines
  has_many :devices
end