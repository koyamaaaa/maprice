class Provider < ApplicationRecord
  validates :name , uniqueness: true

  with_options presence: true do
    validates :name
  end

end