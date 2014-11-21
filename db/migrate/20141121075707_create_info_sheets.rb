class CreateInfoSheets < ActiveRecord::Migration
  def change
    create_table :info_sheets do |t|

      t.timestamps
    end
  end
end
