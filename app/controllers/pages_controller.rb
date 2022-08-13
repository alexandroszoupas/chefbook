class PagesController < ApplicationController
  def home
  end

  def user_postings
    @postings = current_user.postings
  end

  def user_bookings
    @bookings = current_user.bookings
  end
end
