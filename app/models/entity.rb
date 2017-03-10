class Entity < ApplicationRecord
  has_many :contacts, :dependent => :destroy
  has_many :fields, :dependent => :destroy
  has_one :advertiser
end
