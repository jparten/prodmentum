class AddUrlToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :url, :string
  end
end
