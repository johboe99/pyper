class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :description
      t.string :address
      t.references :category, null: false, foreign_key: true
      t.string :opening_hours

      t.timestamps
    end
  end
end
