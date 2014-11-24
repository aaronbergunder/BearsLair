class ChangeSaveInSpells < ActiveRecord::Migration
  def change
  	remove_column :spells, :save
  	add_column :spells, :saveDC, :string
  end
end
