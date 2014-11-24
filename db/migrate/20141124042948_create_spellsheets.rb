class CreateSpellsheets < ActiveRecord::Migration
  def change
    create_table :spellsheets do |t|
      t.references :character, index: true

      t.timestamps
    end
  end
end
