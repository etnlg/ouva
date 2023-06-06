class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :activities, dependent: :destroy
  validates :username, :firstname, :lastname, presence: true
  validates :username, uniqueness: true
end
