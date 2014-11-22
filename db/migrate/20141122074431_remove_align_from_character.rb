class RemoveAlignFromCharacter < ActiveRecord::Migration
  def change
  	remove_column :characters, :align
  end
end
