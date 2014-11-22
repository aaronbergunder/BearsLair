class AddRaceToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :race, :string
    add_column :characters, :charclass, :string
  end
end
