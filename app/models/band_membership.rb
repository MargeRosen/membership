class BandMembership < ActiveRecord::Base

  belongs_to :musician
  belongs_to :band
end
