class AddBelongsToInfosheet < ActiveRecord::Migration
  def change
    add_reference :infosheets, :character, index: true
  end
end
