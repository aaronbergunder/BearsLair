class JoinSpellsToCharacter < ActiveRecord::Migration
  def change
    change_table :spells do |t|
      t.references :character, index: true
    end
  end
end
