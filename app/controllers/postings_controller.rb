class PostingsController < ApplicationController
  def index
    @postings = policy_scope(Posting)
    @posting = Posting.new
  end

  def show
    @postings = Posting.find(params[:id])
  end

  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)
    @posting.user = current_user
    if @posting.save
      redirect_to posting_path(@posting)
    else
      render :new
    end
  end

  def edit
    @posting = Posting.find(params[:id])
  end

  def update
    @posting = Posting.find(params[:id])
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
    @posting = Posting.find(params[:id])
    @posting.destroy
    redirect_to postings_path
  end

  private

  def posting_params
    params.require(:posting).permit(:cuisine, :price, :bio, :name)
  end
end
