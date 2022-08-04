class PostingsController < ApplicationController
  belongs_to :user
  def index
    @postings = policy_scope(Posting)
  end
end
