class Field < ApplicationRecord
  belongs_to :entity
  has_many :schedules
end
