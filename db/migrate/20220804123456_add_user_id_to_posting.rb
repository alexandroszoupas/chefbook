class AddUserIdToPosting < ActiveRecord::Migration[6.1]
  def change
    add_reference :postings, :user, index: true
  end
end
