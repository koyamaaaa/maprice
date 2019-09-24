class PlansDevice < ApplicationRecord
  belongs_to :plan
  belongs_to :device
end