class PostingsController < ApplicationController
  def index
    @postings = policy_scope(Posting)
  end

  def show
    @postings = Posting.find(:id)
  end
end
