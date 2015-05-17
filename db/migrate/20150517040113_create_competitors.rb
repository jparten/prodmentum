class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :state
      t.string :zip
      t.string :country
      t.string :image
      t.integer :user_id
      t.text :key_products
      t.text :strengths
      t.text :weaknesses
      t.text :opportunities
      t.text :threats
    end
  end
end
