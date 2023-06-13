class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_activities #, dependent: :destroy
  has_many :activities, through: :trip_activities #, dependent: :destroy
  validates :destination, :start_date, :end_date, presence: true
end
