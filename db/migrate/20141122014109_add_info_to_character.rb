class AddInfoToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :deity, :string
    add_column :characters, :homeland, :string
    add_column :characters, :size, :string
    add_column :characters, :gender, :string
    add_column :characters, :age, :string
    add_column :characters, :height, :string
    add_column :characters, :weight, :string
    add_column :characters, :hair, :string
    add_column :characters, :eyes, :string
    add_column :characters, :alignment, :string

  end
end
