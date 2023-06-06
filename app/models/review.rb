class Review < ApplicationRecord
  belongs_to :trip_activity
  validates :comment, presence: true
end
