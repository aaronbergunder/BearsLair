class ChangeLevelForCharacters < ActiveRecord::Migration
  def change
  	change_column :characters, :level, :string
  end
end
