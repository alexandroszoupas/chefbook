class Posting < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :cuisine, presence: true
  validates :price, presence: true
  validates :bio, presence: true
  validates :name, presence: true
end
