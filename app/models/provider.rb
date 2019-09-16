class Provider < ApplicationRecord
  validates :name , uniqueness: true

  with_options presence: true do
    validates :name
    validates :net_line_id
  end

end