class Field < ApplicationRecord
  belongs_to :entity
  has_one :schedule
  has_one :schedule_config 
end
