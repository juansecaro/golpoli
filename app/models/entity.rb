class Entity < ApplicationRecord
  has_many :contacts, :dependent => :destroy
  has_many :pitches, :dependent => :destroy
  has_one :advertiser
end
