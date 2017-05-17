class Pitch < ApplicationRecord
  belongs_to :entity
  has_many :schedules
end
