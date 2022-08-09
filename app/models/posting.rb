class Posting < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :cuisine, presence: true
  validates :price, presence: true
  validates :bio, presence: true
  validates :name, presence: true
end
