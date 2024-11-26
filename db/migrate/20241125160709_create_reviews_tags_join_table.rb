class CreateReviewsTagsJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews_tags do |t|
      t.references :review, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
