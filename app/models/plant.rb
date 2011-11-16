class Plant < ActiveRecord::Base
  validates :plant_type, :presence =>true
  validates :x, :presence =>true
  validates :y, :presence =>true
end
