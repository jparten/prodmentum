class AddProductToKpi < ActiveRecord::Migration
  def change
    add_reference :kpis, :product, index: true
    add_foreign_key :kpis, :products
  end
end
