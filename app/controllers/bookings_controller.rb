class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_posting, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.posting = @posting
    if @booking.save!
      redirect_to posting_path(@posting)
    else
      render "postings/show"
    end
  end

  def destroy
    @booking.destroy
    redirect_to posting_path(@booking.posting)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :diners)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_posting
    @posting = Posting.find(params[:posting_id])
  end
end
