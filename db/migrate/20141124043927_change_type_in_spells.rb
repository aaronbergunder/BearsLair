class ChangeTypeInSpells < ActiveRecord::Migration
  def change
  		remove_column :spells, :type
  		add_column :spells, :spType, :string
  end
end
