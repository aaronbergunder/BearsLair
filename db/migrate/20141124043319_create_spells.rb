class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.references :spellsheet, index: true
      t.string :attack
      t.string :range
      t.string :save
      t.string :splevel
      t.string :duration
      t.boolean :memorized
      t.string :type

      t.timestamps
    end
  end
end
