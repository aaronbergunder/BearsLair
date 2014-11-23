class CreateStatusSheets < ActiveRecord::Migration
  def change
    create_table :status_sheets do |t|
      t.integer :maxhp
      t.integer :curhp
      t.integer :nonlthdmg
      t.integer :initiative

      t.timestamps
    end
  end
end
