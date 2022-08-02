class PostingsController < ApplicationController

  def index
    @postings = policy_scope(Posting)
  end
end
