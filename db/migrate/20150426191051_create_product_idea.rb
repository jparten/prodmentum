class CreateProductIdea < ActiveRecord::Migration
  def change
    create_table :product_ideas do |t|
      t.integer :product_id
      t.integer :idea_id
      # Here comes the generated code 
      t.timestamps
    end
  end
end
