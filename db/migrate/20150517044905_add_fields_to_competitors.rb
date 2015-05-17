class AddFieldsToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :employees, :integer
    add_column :competitors, :market_cap, :string
    add_column :competitors, :stock_symbol, :string
    add_column :competitors, :CEO, :string
  end
end
