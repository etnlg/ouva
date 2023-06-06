class Activity < ApplicationRecord
  belongs_to :owner
  validates :name, :description, :location, :price, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
