class Posting < ApplicationRecord
  belongs_to :user

  validates :cuisine, presence: true
  validates :price, presence: true
  validates :bio, presence: true
  validates :name, presence: true
end
