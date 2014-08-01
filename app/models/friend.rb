class Friend < ActiveRecord::Base
  has_many :sightings
  has_many :outfits, through: :sightings
  has_many :users, through: :outfits
end
