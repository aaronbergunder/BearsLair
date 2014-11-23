class CreateStatussheets < ActiveRecord::Migration
  def change
    create_table :statussheets do |t|
      t.references :character, index: true
      t.integer :maxhp
      t.integer :curhp
      t.integer :speed
      t.integer :nonlthdmg
      t.integer :initiative

      t.timestamps
    end
  end
end
