class PagesController < ApplicationController
  def home
  end

  def user_postings
    @postings = current_user.postings
  end
end
