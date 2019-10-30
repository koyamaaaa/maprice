class PlansService < ApplicationRecord
  belongs_to :plan
  belongs_to :service
end