class Field < ApplicationRecord
  belongs_to :entity
  has_many :schedule
  has_one :schedule_config
end
