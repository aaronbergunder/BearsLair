class CreateInfosheets < ActiveRecord::Migration
  def change
    create_table :infosheets do |t|

      t.string :deity
      t.string :homeland
      t.string :size
      t.string :gender
      t.string :age
      t.string :height
      t.string :weight
      t.string :hair
      t.string :eyes

      t.timestamps
    end
  end
end
