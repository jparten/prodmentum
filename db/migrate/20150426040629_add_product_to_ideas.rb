class AddProductToIdeas < ActiveRecord::Migration
  def change
    add_reference :ideas, :product, index: true
    add_foreign_key :ideas, :products
  end
end
