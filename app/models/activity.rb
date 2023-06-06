class Activity < ApplicationRecord
  belongs_to :owner
  validates :name, :description, :location, :price, presence: true
end
