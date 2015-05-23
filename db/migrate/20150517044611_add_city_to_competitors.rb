class AddCityToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :city, :string
  end
end
