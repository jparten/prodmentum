class DropIdeaRatings < ActiveRecord::Migration
  def up 
    drop_table :idea_ratings
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end 
end
