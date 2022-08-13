class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :posting

  validates :occurs_on, uniqueness: true
  # validates :user_id, uniqueness: { scope: :posting_id, message: "cannot book your own post" }
end
