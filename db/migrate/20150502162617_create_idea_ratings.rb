class CreateIdeaRatings < ActiveRecord::Migration
  def change
    create_table :idea_ratings do |t|
      t.string :rating
      t.integer :idea_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
