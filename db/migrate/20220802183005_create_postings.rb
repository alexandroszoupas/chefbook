class CreatePostings < ActiveRecord::Migration[6.1]
  def change
    create_table :postings do |t|
      t.string :cuisine
      t.integer :price
      t.string :bio

      t.timestamps
    end
  end
end
