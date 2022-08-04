class AddNameToPostings < ActiveRecord::Migration[6.1]
  def change
    add_column :postings, :name, :string
  end
end
