class TripActivity < ApplicationRecord
  belongs_to :trip
  belongs_to :activity
  has_many :reviews, dependent: :destroy
  validates :start_time, :end_time, presence: true
end
