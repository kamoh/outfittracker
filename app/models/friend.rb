class Friend < ActiveRecord::Base
  has_many :sightings
  has_many :outfits, through: :sightings
end
