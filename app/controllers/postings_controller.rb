class PostingsController < ApplicationController
  def index
    @postings = policy_scope(Posting)
  end

  def show
    @postings = Posting.find(:id)
  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)
    @user = User.find(params[:user_id])
    @review.user = @user
    if @posting.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  private

  def posting_params
    params.require(:posting).permit(:cuisine, :price, :bio)
  end
end
