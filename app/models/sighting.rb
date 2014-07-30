class Sighting < ActiveRecord::Base
  belongs_to :outfit
  belongs_to :friend
end
