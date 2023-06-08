class Activity < ApplicationRecord
  belongs_to :owner
  has_many_attached :photo
  validates :name, :description, :location, :price, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  has_many :trip_activities
  has_many :reviews, through: :trip_activities
  def random_reviews(number_of_reviews)
    reviews.order("RANDOM()").limit(number_of_reviews)
  end
end
