class InfoSheet < ActiveRecord::Base

	belongs_to :character

	t.string :name
	t.string :alignment
	t.integer :level, :age
	t.string :deity
	t.string :homeland
	t.string :race
	t.string :size
	t.string :gender, :height, :weight, :hair, :eyes
end
