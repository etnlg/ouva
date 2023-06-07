class Activity < ApplicationRecord
  belongs_to :owner
  has_one_attached :photo
  validates :name, :description, :location, :price, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
