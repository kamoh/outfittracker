class Friend < ActiveRecord::Base
  has_many :sightings
  has_many :outfits, through: :sightings
  belongs_to :user
end
