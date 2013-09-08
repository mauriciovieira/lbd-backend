class Report < ActiveRecord::Base
  belongs_to :place
  belongs_to :brand
  belongs_to :temperature
  belongs_to :recipient


  class << self
    def from_place(place_id)
      where(place_id: place_id)
    end
  end
end