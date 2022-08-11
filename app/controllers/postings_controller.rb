class PostingsController < ApplicationController
  before_action :set_posting, only: %i[show edit update destroy]

  def index
    @postings = policy_scope(Posting)
    @posting = Posting.new
  end

  def show
    @booking = Booking.new
    # @posting = Posting.find(params[:id])
  end

  def new
    @posting = Posting.new
    authorize @posting
  end

  def create
    @posting = Posting.new(posting_params)
    @posting.user = current_user

    if @posting.save
      redirect_to posting_path(@posting)
    else
      render :new
    end
    authorize @posting
  end

  def edit
    # @posting = Posting.find(params[:id])
  end

  def update
    # @posting = Posting.find(params[:id])
    if @posting.update(posting_params)
      redirect_to postings_path
    else
      render :new
    end
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def destroy
    # @posting = Posting.find(params[:id])
    @posting.destroy
    redirect_to postings_path
  end

  private

  def set_posting
    @posting = Posting.find(params[:id])
    authorize @posting
  end

  def posting_params
    params.require(:posting).permit(:cuisine, :price, :bio, :name)
  end
end
